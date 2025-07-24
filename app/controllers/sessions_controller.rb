class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(email: params[:email])
    if admin&.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to admins_path, notice: "Sesión iniciada correctamente"
    else
      flash.now[:alert] = "Correo o contraseña inválidos"
      render :new
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to login_path, notice: "Sesión cerrada"
  end
end