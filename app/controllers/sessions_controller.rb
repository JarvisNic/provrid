class SessionsController < ApplicationController
  def new
  end

  def index
    #@cordinator = Cordinator.all.order('name ASC')
    @cordinator = Cordinator.search(params[:search]).page(params[:page]).per(3)
    @proyects = Project.all.search(params[:search]).page(params[:page]).per(3)
  end


  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end
      redirect_to root_url, notice: 'Sesión Iniciada con éxito'
    else
      redirect_to root_url, alert: 'Usted no esta registrado'
    end
  end
  
  def destroy
    session[:user_id] = nil
    cookies.delete(:auth_token)
    redirect_to root_url, notice: 'Hasta Pronto!'
  end
end
