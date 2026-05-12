class AdminsController < ApplicationController
  before_action :require_admin

  def index
  end

  def new
    redirect_to admins_path, alert: "Ya existe un administrador" and return if Admin.exists?

    @admin = Admin.new
  end

  def create
    redirect_to admins_path, alert: "Ya existe un administrador" and return if Admin.exists?

    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to admins_path, notice: "Admin creado exitosamente"
    else
      render :new
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end

  def require_admin
    redirect_to login_path, alert: "Acceso no autorizado" unless current_admin
  end
end
