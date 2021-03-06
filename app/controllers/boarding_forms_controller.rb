class BoardingFormsController < ApplicationController
  before_action :set_boarding_form, only: [:show, :edit, :update, :destroy]

  # GET /boarding_forms
  # GET /boarding_forms.json
  def index
    @boarding_forms = BoardingForm.all
  end

  # GET /boarding_forms/1
  # GET /boarding_forms/1.json
  def show
  end

  # GET /boarding_forms/new
  def new
    @boarding_form = BoardingForm.new
  end

  # GET /boarding_forms/1/edit
  def edit
  end

  # POST /boarding_forms
  # POST /boarding_forms.json
  def create
date = boarding_form_params["traveldate"]
date_time = DateTime.parse(date).strftime("%m/%d/%Y").to_date
nights = boarding_form_params["numberofnights"].to_i
mobile = boarding_form_params["mobile"].to_i
       hash = {
        :type_value => boarding_form_params["type_value"],
        :spot => boarding_form_params["spot"],
        :services => boarding_form_params["services"],
        :traveldate => date_time ,
        :numberofnights => nights,
        :mobile => mobile,
        :email => boarding_form_params["email"],
       }
       # hash = {
       #  :type => "dsf",
       #  :spot => "dffd",
       #  :services => "uuu",
       #  :traveldate => 2018-05-07,
       #  :numberofnights => 5,
       #  :mobile => 66,
       #  :email => "kk",
       # }
       # abort(hash.inspect)
    @boarding_form = BoardingForm.create(hash)

    respond_to do |format|
      if @boarding_form.save
        format.html { redirect_to @boarding_form, notice: 'Boarding form was successfully created.' }
        format.json { render :show, status: :created, location: @boarding_form }
      else
        format.html { render :new }
        format.json { render json: @boarding_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boarding_forms/1
  # PATCH/PUT /boarding_forms/1.json
  def update
    respond_to do |format|
      if @boarding_form.update(boarding_form_params)
        format.html { redirect_to @boarding_form, notice: 'Boarding form was successfully updated.' }
        format.json { render :show, status: :ok, location: @boarding_form }
      else
        format.html { render :edit }
        format.json { render json: @boarding_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boarding_forms/1
  # DELETE /boarding_forms/1.json
  def destroy
    @boarding_form.destroy
    respond_to do |format|
      format.html { redirect_to boarding_forms_url, notice: 'Boarding form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boarding_form
      @boarding_form = BoardingForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boarding_form_params
      params.require(:boarding_form).permit(:type, :spot, :services, :traveldate, :numberofnights, :mobile, :email)
    end
end
