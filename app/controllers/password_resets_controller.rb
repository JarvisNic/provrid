class PasswordResetsController < ApplicationController
  
  def new
  end

  def create

  	user = User.find_by_email(params[:email])
  	user.send_password_reset if user
  	redirect_to root_url, :notice => "Se ha enviado instrucciones a tu correo."
  	
  end

  def edit

	@user = User.find_by_password_reset_token!(params[:id])

  end

def update
  @user = User.find_by_password_reset_token!(params[:id])
  if @user.password_reset_sent_at < 2.hours.ago
    redirect_to new_password_reset_path, :alert => "Password &crarr; 
      reset has expired."
  elsif @user.update_attributes(params[:id])
    redirect_to root_url, :notice => "Su contraseña ha sido cambiado correctamente"
  else
    render :edit
  end
end

end
