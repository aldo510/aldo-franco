class CollaboratorsController < ApplicationController
  before_action :require_admin
  before_action :set_collaborator, only: [:edit, :update, :destroy]

  def index
    @collaborators = Collaborator.ordered
  end

  def new
    @collaborator = Collaborator.new
  end

  def create
    @collaborator = Collaborator.new(collaborator_params)
    if @collaborator.save
      redirect_to admins_path, notice: "Colaborador creado correctamente"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @collaborator.update(collaborator_params)
      redirect_to admins_path, notice: "Colaborador actualizado correctamente"
    else
      render :edit
    end
  end

  def destroy
    @collaborator.destroy
    redirect_to admins_path, notice: "Colaborador eliminado correctamente"
  end

  def bulk_destroy
    ids = Array(params[:collaborator_ids]).reject(&:blank?)
    Collaborator.where(id: ids).destroy_all
    redirect_to admins_path, notice: "#{ids.size} colaborador(es) eliminado(s)"
  end

  private

  def set_collaborator
    @collaborator = Collaborator.find(params[:id])
  end

  def collaborator_params
    params.require(:collaborator).permit(:name, :title, :position)
  end
end
