require "open-uri"
require "erb"

class Building < ApplicationRecord

  # enum kind: [:residential, :commercial, :office, :health, :education, :cultural, :publics]
  has_and_belongs_to_many :kinds
  before_destroy { kinds.clear }
  has_one_attached :thumbnail_image
  has_many_attached :project_images
  has_many_attached :fullscreen_images

  attr_accessor :images_text, :imagesori_text

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validate :validate_attached_images

  def similars
    kinds = self.kinds.pluck(:id)
    proyects = Building.joins(:kinds).where('kinds.id' => kinds).where.not('buildings.id' => self.id).uniq
  end

  def images_text
    @images_text || images.join("\n")
  end

  def imagesori_text
    @imagesori_text || imagesori.join("\n")
  end

  def display_project_images
    project_images.attached? ? ordered_project_images : images
  end

  def display_thumbnail_image
    return thumbnail_image if thumbnail_image.attached?
    return ordered_project_images.first if project_images.attached?

    thumbnail.presence || images.first
  end

  def display_fullscreen_images
    fullscreen_images.attached? ? ordered_fullscreen_images : imagesori
  end

  def attach_uploaded_images(thumbnail_upload: nil, project_uploads: [], fullscreen_uploads: [])
    project_uploads = Array(project_uploads).reject(&:blank?)
    fullscreen_uploads = Array(fullscreen_uploads).reject(&:blank?)

    thumbnail_image.attach(thumbnail_upload) if thumbnail_upload.present?
    project_images.attach(project_uploads) if project_uploads.any?
    fullscreen_images.attach(fullscreen_uploads) if fullscreen_uploads.any?
    normalize_image_attachment_positions! if persisted?
  end

  def normalize_image_attachment_positions!
    normalize_attachment_positions!("project_images")
    normalize_attachment_positions!("fullscreen_images")
  end

  def warm_image_variants!
    return unless Gem.loaded_specs.key?("image_processing")

    warm_variant(thumbnail_image, [900, 900]) if thumbnail_image.attached?
    ordered_project_images.each { |image| warm_variant(image, [1400, 1400]) }
    ordered_fullscreen_images.each { |image| warm_variant(image, [2200, 2200]) }
  rescue StandardError => error
    Rails.logger.warn("No se pudieron precalentar variantes para #{name}: #{error.message}")
  end

  def ordered_project_images
    project_images.attachments.includes(:blob).order(:position, :id)
  end

  def ordered_fullscreen_images
    fullscreen_images.attachments.includes(:blob).order(:position, :id)
  end

  def reorder_attachments!(attachment_name, attachment_ids)
    return unless attachment_name.in?(%w[project_images fullscreen_images])

    attachments = public_send(attachment_name).attachments.where(id: attachment_ids)
    attachments_by_id = attachments.index_by(&:id)

    attachment_ids.each_with_index do |attachment_id, index|
      attachments_by_id[attachment_id]&.update!(position: index)
    end
  end

  def migrate_legacy_images_to_s3!
    migrated = 0
    migrated += migrate_legacy_thumbnail_to_s3
    migrated += migrate_legacy_collection(images, project_images, "project_images")
    migrated += migrate_legacy_collection(imagesori, fullscreen_images, "fullscreen_images")
    migrated
  end

  def needs_s3_migration?
    legacy_thumbnail_pending? || legacy_project_images_pending? || legacy_fullscreen_images_pending?
  end

  def legacy_thumbnail_pending?
    thumbnail.present? && !thumbnail_image.attached?
  end

  def legacy_project_images_pending?
    images.any? && !project_images.attached?
  end

  def legacy_fullscreen_images_pending?
    imagesori.any? && !fullscreen_images.attached?
  end

  private

  def validate_attached_images
    validate_image_attachment(thumbnail_image.attachment) if thumbnail_image.attached?
    project_images.attachments.each { |attachment| validate_image_attachment(attachment) }
    fullscreen_images.attachments.each { |attachment| validate_image_attachment(attachment) }
  end

  def validate_image_attachment(attachment)
    unless attachment.content_type.in?(%w[image/jpeg image/png image/webp])
      errors.add(:base, "Las imagenes deben ser JPG, PNG o WebP")
    end

    if attachment.byte_size > 12.megabytes
      errors.add(:base, "Cada imagen debe pesar menos de 12 MB")
    end
  end

  def warm_variant(attachment, resize_to_limit)
    attachment.variant(resize_to_limit: resize_to_limit, saver: { quality: 78, strip: true }).processed
  end

  def migrate_legacy_collection(paths, attachments, attachment_name)
    Array(paths).sum do |path|
      attach_legacy_image(path, attachments, attachment_name) ? 1 : 0
    end
  end

  def migrate_legacy_thumbnail_to_s3
    return 0 if thumbnail.blank? || thumbnail_image.attached?

    source = legacy_image_source(thumbnail)
    return 0 unless source

    thumbnail_image.attach(
      io: source[:io],
      filename: File.basename(thumbnail.to_s),
      content_type: source[:content_type]
    )
    1
  ensure
    source&.dig(:io)&.close
  end

  def attach_legacy_image(path, attachments, attachment_name)
    return false if path.blank?

    filename = File.basename(path.to_s)
    return false if attachments.any? { |attachment| attachment.filename.to_s == filename }

    source = legacy_image_source(path)
    return false unless source

    attachments.attach(
      io: source[:io],
      filename: filename,
      content_type: source[:content_type]
    )
    normalize_attachment_positions!(attachment_name)
    true
  ensure
    source&.dig(:io)&.close
  end

  def legacy_image_source(path)
    local_path = local_legacy_image_path(path)
    if local_path
      return {
        io: File.open(local_path, "rb"),
        content_type: Marcel::MimeType.for(Pathname.new(local_path))
      }
    end

    url = legacy_image_url(path)
    remote = URI.open(url)
    {
      io: remote,
      content_type: remote.content_type.presence || "image/jpeg"
    }
  rescue StandardError => error
    Rails.logger.warn("No se pudo migrar imagen #{path}: #{error.message}")
    nil
  end

  def local_legacy_image_path(path)
    return nil if path.to_s.match?(%r{\Ahttps?://})

    [
      Rails.root.join("app/assets/images", path),
      Rails.root.join("public/assets", path)
    ].find { |candidate| File.exist?(candidate) }
  end

  def legacy_image_url(path)
    return path if path.to_s.match?(%r{\Ahttps?://})

    escaped_path = path.to_s.split("/").map { |segment| ERB::Util.url_encode(segment) }.join("/")
    "https://d3tlw7q61ww5gp.cloudfront.net/#{escaped_path}"
  end

  def normalize_attachment_positions!(attachment_name)
    return unless persisted?

    attachments = public_send(attachment_name).attachments.order(:position, :id)
    attachments.each_with_index do |attachment, index|
      attachment.update_column(:position, index) if attachment.position != index
    end
  end

end
