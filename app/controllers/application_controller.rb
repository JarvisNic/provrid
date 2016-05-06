class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   private
  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user
  def require_login
    unless current_user
      redirect_to root_url, alert: "Por favor inicie sesion"
    end
  end

end
