class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_filter :require_login


  # GET /projects
  # GET /projects.json
  #get reporte/proyecto
  def report

 @projecta = Project.find(params[:id])

        pdf = Prawn::Document.new
        pdf.text "Universidad Nacional de Ingenieria" , :size => 30, :style => :bold, :position => :center
        pdf.move_down(10) 
        pdf.text "Vicerectoria de Investigación y Desarrollo." , :size => 25, :style => :bold,  :position => :center
        pdf.move_down(10)
        pdf.text "Programa de acompañamiento a Proyectos" , :size => 20, :style => :bold,  :position => :center
        pdf.text "Reporte Generado por el programa de Tecnología de la Informacion PROAP" , :size => 15, :position => :center
        pdf.move_down(45) 
        pdf.image "#{Rails.root.join}/app/assets/images/uni.jpg",  :position => :center ,:at => [0, 600], :height => 100
        pdf.move_down(80)
        pdf.text "Nombre del Proyecto:", :size => 20, :style => :bold
        pdf.move_down(10) 
        pdf.text "#{@projecta.name}", :size => 20
        pdf.move_down(10)
        pdf.text "Objetivo del Proyecto: " , :size => 13, :style => :bold
        pdf.move_down(10) 
        pdf.text "#{@projecta.objetive}", :size => 13
        pdf.move_down(10) 
        pdf.text "Estado del Proyecto: #{@projecta.status}", :size => 13
        pdf.move_down(20) 
        pdf.text "Fase del Proyecto: #{@projecta.fase}", :size => 13
        pdf.move_down(10)
        pdf.text " Los Reportes que pertenecen a #{@projecta.name} son :", :size => 13, :style => :bold
        pdf.move_down(20)
        @projecta.reports.each do |pr|
        pdf.text "Nombre del Reporte: #{pr.name}", :style => :bold
        pdf.move_down(10)
        pdf.text "Descripcion del Reporte: #{pr.desc}"
        pdf.move_down(10)
        pdf.text "Fecha y Hora local de creacion del reporte: #{pr.created_at}"
        pdf.move_down(10)
        pdf.text "Fecha y Hora local de acutalizacion del repote: #{pr.date}"
        pdf.move_down(10)
        pdf.line [0,100], [500,100]
         end
        

        pdf.create_stamp("Proyecto Aprobado") do
        pdf.rotate(30, :origin => [-5, -5]) do
        pdf.stroke_color "FF3333"
        pdf.stroke_ellipse [0, 0], 49, 15
        pdf.stroke_color "000000"
        pdf.fill_color "993333"
        pdf.font("Times-Roman") do
        pdf.draw_text "Proyecto Aprobado", :at => [-23, -3]
     end
        pdf.fill_color "000000"
     end
     end
        pdf.stamp "Proyecto Aprobado"
        pdf.stamp_at "Proyecto Aprobado", [250, 200]
        send_data pdf.render, :filename => "#{@projecta.name}", :disposition => "inline"
     pdf.text_box "Informe Generado por el Programa de acompañamiento a Proyectos", :at => [220,200], :style => :bold
  end
  
  def index
     c = current_user.cordinator
     if current_user.typeuser == 1
      @projects = Project.search(params[:search]).order('name ASC').page(params[:page]).per(3)
      else
    @cordinator = Project.search(params[:search]).page(params[:page]).per(3)
    @cor = Cordinator.search(params[:search]).page(params[:page]).per(2)
    #@projects = Project.all.where(:id => c.projects)
    #@projects = Project.search(params[:search]).order('name ASC').page(params[:page]).per(3)
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

    render text: params[:project].inspect

    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: 'Proyecto creado sastifactoriamente' }
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
      params.require(:project).permit(:name, :objetive, :responsable, :time, :status, :fase, :cordinator_id,:time)
    end
end
