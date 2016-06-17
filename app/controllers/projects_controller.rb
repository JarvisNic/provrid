class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_filter :require_login


  # GET /projects
  # GET /projects.json
  #get reporte/proyecto
  def report


 #@projecta = Project.find(params[:id])
 @projecta = Project.find(params[:id])
 #Prawn::Document.gnerate("Firsdocu.pdf") do
  #text "Hola mundo mi primer pdf"
#end
render "project/show.prawn.pdf"
        respond_to do |format|

            format.html # show.html.erb
            format.json { render json: @project }
            format.pdf  { render :layout => false }
           format.pdf do

              
   pdf = Prawn::Document.new
       pdf.text "Universidad Nacional de Ingenieria" , :size => 30, :style => :bold
       # pdf.move_down(40) 
        #pdf.image "#{Prawn:::DATADIR}/app/assets/images/uni.png", :at => [200, 10]
        pdf.text "Nombre del Proyecto #{@project.name}", :size => 20
      #  pdf.create_stamp("Proyecto Aprobado") do
      #        pdf.rotate(30, :origin => [-5, -5]) do
         #     pdf.stroke_color "FF3333"
      #        pdf.stroke_ellipse [0, 0], 29, 15
      #        pdf.stroke_color "000000"
     #         pdf.fill_color "993333"
      #        pdf.font("Times-Roman") do
      #        pdf.draw_text "Proyecto Aprobado", :at => [-23, -3]
     #         end
         #     pdf.fill_color "000000"
     #         end
      #        end
      #        pdf.stamp "Proyecto Aprobado"
      #        pdf.stamp_at "Proyecto Aprobado", [200, 200]
      send_data pdf.render, :filename => ".pdf", :disposition => "inline"
      # prawnto :filename => @project.name + ".pdf", :inline => false, :template => "show.pdf.prawn"
end

#prawnto :prawn => { :template => "#{Rails.root}/app/assets/pdfs/template1.pdf" }
end
  #  output = ProjectsReport.new(:page_size=>"letter").to_pdf
  #  respond_to do |format|
  #    format.html do
  #      send_data output, :filename => 'productos.pdf',
  #                      :type=>"aplication/pdf"
  #      end
 #   end
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
    #@projecta = Project.find(params[:id])
   # @filename = 'myreport.pdf'

    #respond_to do |format|
     
     #format.pdf do
      #  pdf = new(@projects)
       # send_data pdf.render, filename: 'report.pdf'
     # format.pdf { render :layout => false }
      #end

    #end

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

      
     

pdf = Prawn::Document.new
      pdf.text "Universidad Nacional de Ingenieria" , :size => 30, :style => :bold
  #      pdf.move_down(40) 
        #pdf.image "#{Prawn:::DATADIR}/app/assets/images/uni.png", :at => [200, 10]
        pdf.text "Nombre del Proyecto #{@projects.name}", :size => 20
    #    pdf.create_stamp("Proyecto Aprobado") do
     #         pdf.rotate(30, :origin => [-5, -5]) do
      #        pdf.stroke_color "FF3333"
       #       pdf.stroke_ellipse [0, 0], 29, 15
        #      pdf.stroke_color "000000"
         #     pdf.fill_color "993333"
           #   pdf.font("Times-Roman") do
            #  pdf.draw_text "Proyecto Aprobado", :at => [-23, -3]
             # end
              #pdf.fill_color "000000"
              #end
              #end
              #pdf.stamp "Proyecto Aprobado"
              #pdf.stamp_at "Proyecto Aprobado", [200, 200]
        send_data pdf.render, :filename => ".pdf", :disposition => "inline", :template => "show.pdf.prawn"
     # @projecta = Project.find(params[:id])
       

       # respond_to do |format|

        #format.pdf { render :layout => true }
        #format.html { redirect_to projects_url, :format => 'pdf' }
        #pdf = new(@projects)
        

        #format.html { redirect_to projects_url, notice: 'El reporte se ha descargado sastifactoriamente' }
        #format.json { head :no_content }

      #end
       # respond_to do |format|
     
         # format.pdf do
          #pdf = new(@projects)
         # pdf = Prawn::Document.new
          #send_data pdf.render
        #pdf { render :layout => false }
                  #end
                #  end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :objetive, :responsable, :time, :status, :fase, :cordinator_id,:time)
    end
end
