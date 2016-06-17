class CordinatorsController < ApplicationController
  before_action :set_cordinator, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  # GET /cordinators
  # GET /cordinators.json
  def index
    @cordinators = Cordinator.all.order('name ASC').page(params[:page]).per(3)
  end
  #get rerpote/cordi
  def reporte_cordinador
    output = ReporteCordinador.new(:page_size=>"letter").to_pdf
    respond_to do |format|
      format.html do
        send_data output, :filename => 'productos.pdf',
                        :type=>"aplication/pdf"
        end
    end
  end

  # GET /cordinators/1
  # GET /cordinators/1.json
  def show
  end

  # GET /cordinators/new
  def new
    @cordinator = Cordinator.new
  end

  # GET /cordinators/1/edit
  def edit
  end

  # POST /cordinators
  # POST /cordinators.json
  def create
    @cordinator = Cordinator.new(cordinator_params)

    respond_to do |format|
      if @cordinator.save
        format.html { redirect_to @cordinator, notice: 'El cordinador se ha creado correctamente' }
        format.json { render :show, status: :created, location: @cordinator }
      else
        format.html { render :new }
        format.json { render json: @cordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cordinators/1
  # PATCH/PUT /cordinators/1.json
  def update
    respond_to do |format|
      if @cordinator.update(cordinator_params)
        format.html { redirect_to @cordinator, notice: 'El cordinador se ha actualizado correctamente' }
        format.json { render :show, status: :ok, location: @cordinator }
      else
        format.html { render :edit }
        format.json { render json: @cordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cordinators/1
  # DELETE /cordinators/1.json
  def destroy
    @cordinator.destroy
    respond_to do |format|
      format.html { redirect_to cordinators_url, notice: 'El cordinador se ha eliminado correctamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cordinator
      @cordinator = Cordinator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cordinator_params
      params.require(:cordinator).permit(:name, :address, :phone)
    end
end
