class SessionsController < ApplicationController
  def new
  end

  def index
    @cordinator = Cordinator.all.order('name ASC')
    @cordinator = Cordinator.search(params[:search]).page(params[:page]).per(3)
    @proyects = Project.all.search(params[:search]).page(params[:page]).per(3)


  end


  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Sesión Iniciada con éxito'
    else
      render :index
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Hasta Pronto!'
  end
end
