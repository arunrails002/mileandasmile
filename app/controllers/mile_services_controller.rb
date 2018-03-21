class MileServicesController < ApplicationController
  before_action :set_mile_service, only: [:show, :edit, :update, :destroy]

  # GET /mile_services
  # GET /mile_services.json
  def index
    @mile_services = MileService.all
  end

  # GET /mile_services/1
  # GET /mile_services/1.json
  def show
  end

  # GET /mile_services/new
  def new
    @mile_service = MileService.new
  end

  # GET /mile_services/1/edit
  def edit
  end

  # POST /mile_services
  # POST /mile_services.json
  def create
    @mile_service = MileService.new(mile_service_params)

    respond_to do |format|
      if @mile_service.save
        format.html { redirect_to @mile_service, notice: 'Mile service was successfully created.' }
        format.json { render :show, status: :created, location: @mile_service }
      else
        format.html { render :new }
        format.json { render json: @mile_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mile_services/1
  # PATCH/PUT /mile_services/1.json
  def update
    respond_to do |format|
      if @mile_service.update(mile_service_params)
        format.html { redirect_to @mile_service, notice: 'Mile service was successfully updated.' }
        format.json { render :show, status: :ok, location: @mile_service }
      else
        format.html { render :edit }
        format.json { render json: @mile_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mile_services/1
  # DELETE /mile_services/1.json
  def destroy
    @mile_service.destroy
    respond_to do |format|
      format.html { redirect_to mile_services_url, notice: 'Mile service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mile_service
      @mile_service = MileService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mile_service_params
      params.require(:mile_service).permit(:name, :image, :description)
    end
end
