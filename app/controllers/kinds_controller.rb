class KindsController < ApplicationController
  before_action :require_admin, only: [:edit, :update]

  def index
    @kinds = Kind.all
  end

  def show
    @kind = Kind.includes(:buildings).find(params[:id])
  end

  def edit
    @kind = Kind.find(params[:id])
  end

  def update
    @kind = Kind.find(params[:id])
    if @kind.update(kind_params)
      redirect_to kind_path(@kind), notice: "Categoría actualizada correctamente"
    else
      render :edit
    end
  end

  private

  def kind_params
    params.require(:kind).permit(:name)
  end
end