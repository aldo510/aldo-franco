class AdminsController < ApplicationController
  before_action :require_admin

  def index
    @admins = Admin.all
    @kinds = Kind.includes(:buildings).all
  end

  def new
    @admin = Admin.new
  end

  def create
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