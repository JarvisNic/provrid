class WelcomeController < ApplicationController
  def index
    @projects = Project.select("name").where(:id => params[:id]);
  end
end
