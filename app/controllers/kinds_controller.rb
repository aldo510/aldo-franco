class KindsController < ApplicationController
  before_action :require_admin, except: [:index, :show]
  before_action :set_kind, only: [:show, :edit, :update]

  def index
    @kinds = Kind.all
  end

  def show
  end

  def new
    @kind = Kind.new
  end

  def create
    @kind = Kind.new(kind_params)
    if @kind.save
      redirect_to admins_path, notice: "Categoría creada correctamente"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @kind.update(kind_params)
      redirect_to admins_path, notice: "Categoría actualizada correctamente"
    else
      render :edit
    end
  end

  def destroy
    @kind = Kind.find(params[:id])
    @kind.destroy
    redirect_to admins_path, notice: "Categoría eliminada correctamente"
  end

  def bulk_destroy
    ids = Array(params[:kind_ids]).reject(&:blank?)
    Kind.where(id: ids).destroy_all
    redirect_to admins_path, notice: "#{ids.size} categoría(s) eliminada(s)"
  end

  private

  def set_kind
    @kind = Kind.includes(:buildings).find(params[:id])
  end

  def kind_params
    params.require(:kind).permit(:name)
  end
end
