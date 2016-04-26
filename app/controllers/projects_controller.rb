class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
        c = current_user.cordinator
     if current_user.typeuser = 1
      @projects = Project.all.order('name ASC').page(params[:page]).per(3)
    
     else
      
    @projects = Project.all.where(:id => c.projects)
      @projects = Project.order('name ASC').page(params[:page]).per(3)
    end
  end
  def dataas
    render json: Project.group_by_month(:created_at, format: "%b  %d").count
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @projects = Project.select("all").where(:project_id => params[:id]);
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Proyecto creado sastifactoriamente' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Proyecto actualizado sastifactoriamente' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Proyecto eliminado sastifactoriamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :objetive, :responsable, :time, :status, :fase)
    end
end
