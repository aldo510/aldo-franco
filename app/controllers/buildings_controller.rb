class BuildingsController < ApplicationController
  before_action :require_admin, except: [:index, :show]
  before_action :set_building, only: [:show, :edit, :update, :destroy, :migrate_images_to_s3, :reorder_attachments, :destroy_attachment]

  def index
    if current_admin
      @buildings = Building.includes(:kinds).order(:name)
    else
      @all = Building.all
      @build_hash = Kind.all_by_kinds
    end
  end

  def show
    @images_building = @building.images
    @similar = @building.similars.sample(3)
  	@build_hash = Kind.all_by_kinds
    # @all = Building.all
  end

  def new
    @building = Building.new
    @kinds = Kind.order(:name)
  end

  def create
    @building = Building.new(building_params)
    @building.attach_uploaded_images(
      thumbnail_upload: params.dig(:building, :thumbnail_image),
      project_uploads: params.dig(:building, :project_images),
      fullscreen_uploads: params.dig(:building, :fullscreen_images)
    )

    if @building.save
      redirect_to admins_path, notice: "Desarrollo creado correctamente"
    else
      @kinds = Kind.order(:name)
      render :new
    end
  end

  def edit
    @kinds = Kind.order(:name)
  end

  def update
    @building.attach_uploaded_images(
      thumbnail_upload: params.dig(:building, :thumbnail_image),
      project_uploads: params.dig(:building, :project_images),
      fullscreen_uploads: params.dig(:building, :fullscreen_images)
    )

    if @building.update(building_params)
      redirect_to admins_path, notice: "Desarrollo actualizado correctamente"
    else
      @kinds = Kind.order(:name)
      render :edit
    end
  end

  def destroy
    @building.destroy
    redirect_to admins_path, notice: "Desarrollo eliminado correctamente"
  end

  def bulk_destroy
    ids = Array(params[:building_ids]).reject(&:blank?)
    Building.where(id: ids).destroy_all
    redirect_to admins_path, notice: "#{ids.size} desarrollo(s) eliminado(s)"
  end

  def migrate_images_to_s3
    count = @building.migrate_legacy_images_to_s3!
    redirect_to edit_building_path(@building), notice: "#{count} imagen(es) migrada(s) a S3"
  end

  def reorder_attachments
    attachment_ids = Array(params[:attachment_ids]).map(&:to_i)
    attachment_name = params[:attachment_name].to_s
    @building.reorder_attachments!(attachment_name, attachment_ids)

    title = attachment_name == "fullscreen_images" ? "Imagenes fullscreen en S3" : "Imagenes en S3 para slider"
    render partial: "attachment_sorter", locals: { building: @building, attachment_name: attachment_name, title: title }
  end

  def destroy_attachment
    attachment = ActiveStorage::Attachment.find(params[:attachment_id])
    attachment.purge if attachment.record == @building
    redirect_to edit_building_path(@building), notice: "Imagen eliminada"
  end

  private

  def set_building
    @building = Building.find(params[:id])
  end

  def building_params
    params.require(:building)
          .permit(:name, :description, :year, :location, :area, :thumbnail, :images_text, :imagesori_text, kind_ids: [])
          .tap do |permitted|
            permitted[:images] = lines_from(permitted.delete(:images_text))
            permitted[:imagesori] = lines_from(permitted.delete(:imagesori_text))
            permitted[:kind_ids] = Array(permitted[:kind_ids]).reject(&:blank?)
          end
  end

  def lines_from(value)
    value.to_s.lines.map(&:strip).reject(&:blank?)
  end

end
