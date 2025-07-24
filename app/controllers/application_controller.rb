class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_admin

  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id]) if session[:admin_id]
  end

  def require_admin
    redirect_to login_path, alert: "Necesitas iniciar sesión" unless current_admin
  end
  
end
