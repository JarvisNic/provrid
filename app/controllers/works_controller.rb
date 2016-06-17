class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  # GET /works
  # GET /works.json
  def index
    #@works = Work.where(id = current_user.cordinator.projects.reports.works.id)
    @cordinator = Cordinator.all.order('name ASC').page(params[:page]).per(3)
    @work  = Work.search(params[:search]).order('report_id ASC').page(params[:page]).per(5).joins("inner join reports on works.report_id = reports.id   inner join projects on projects.id = reports.project_id inner join cordinators on cordinators.id = projects.cordinator_id").where("cordinators.name = :name", { name: current_user.cordinator.name}).distinct
    
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "report", :layout => 'pdf.html.haml'
      end
    end
        
    end

  # GET /works/1
  # GET /works/1.json
  def show
  end

  # GET /works/new
  def new
    @work = Work.new
  end

  # GET /works/1/edit
  def edit
  end

  # POST /works
  # POST /works.json
  def create
    @work = Work.new(work_params)

    respond_to do |format|
      if @work.save
        format.html { redirect_to works_path, notice: 'Tarea Creado sastifactoriamente' }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { redirect_to works_path, notice: 'Algo Salió mal' }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /works/1
  # PATCH/PUT /works/1.json
  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to @work, notice: 'Tarea actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /works/1
  # DELETE /works/1.json
  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to works_url, notice: 'Tarea eliminada correctamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_params
      params.require(:work).permit(:name, :objetive, :descripcion,:report_id, :fecha_inicio, :fecha_fin )
    end
end
