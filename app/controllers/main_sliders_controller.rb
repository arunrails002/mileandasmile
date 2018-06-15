class MainSlidersController < ApplicationController
  before_action :set_main_slider, only: [:show, :edit, :update, :destroy]

  # GET /main_sliders
  # GET /main_sliders.json
  def index
    @main_sliders = MainSlider.all
  end

  # GET /main_sliders/1
  # GET /main_sliders/1.json
  def show
  end

  # GET /main_sliders/new
  def new
    @main_slider = MainSlider.new
  end

  # GET /main_sliders/1/edit
  def edit
  end

  # POST /main_sliders
  # POST /main_sliders.json
  def create
    @main_slider = MainSlider.new(main_slider_params)

    respond_to do |format|
      if @main_slider.save
        format.html { redirect_to @main_slider, notice: 'Main slider was successfully created.' }
        format.json { render :show, status: :created, location: @main_slider }
      else
        format.html { render :new }
        format.json { render json: @main_slider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_sliders/1
  # PATCH/PUT /main_sliders/1.json
  def update
    respond_to do |format|
      if @main_slider.update(main_slider_params)
        format.html { redirect_to @main_slider, notice: 'Main slider was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_slider }
      else
        format.html { render :edit }
        format.json { render json: @main_slider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_sliders/1
  # DELETE /main_sliders/1.json
  def destroy
    @main_slider.destroy
    respond_to do |format|
      format.html { redirect_to main_sliders_url, notice: 'Main slider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_slider
      @main_slider = MainSlider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_slider_params
      params.require(:main_slider).permit(:name, :image, :image_1, :image_2)
    end
end
