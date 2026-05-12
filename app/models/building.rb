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
    thumbnail_image.attached? ? thumbnail_image : thumbnail.presence || display_project_images.first
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
    normalize_attachment_positions!("project_images")
    normalize_attachment_positions!("fullscreen_images")
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
    migrated += migrate_legacy_collection(images, project_images, "project_images")
    migrated += migrate_legacy_collection(imagesori, fullscreen_images, "fullscreen_images")
    migrated
  end

  private

  def validate_attached_images
    [project_images, fullscreen_images].each do |attachments|
      attachments.each do |attachment|
        unless attachment.content_type.in?(%w[image/jpeg image/png image/webp])
          errors.add(:base, "Las imagenes deben ser JPG, PNG o WebP")
        end

        if attachment.byte_size > 12.megabytes
          errors.add(:base, "Cada imagen debe pesar menos de 12 MB")
        end
      end
    end
  end

  def migrate_legacy_collection(paths, attachments, attachment_name)
    Array(paths).sum do |path|
      attach_legacy_image(path, attachments, attachment_name) ? 1 : 0
    end
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
    attachments = public_send(attachment_name).attachments.order(:position, :id)
    attachments.each_with_index do |attachment, index|
      attachment.update_column(:position, index) if attachment.position != index
    end
  end

end
