class WaterLiterDeliveredsController < ApplicationController
  before_action :set_water_liter_delivered, only: [:show, :edit, :update, :destroy]

  # GET /water_liter_delivereds
  # GET /water_liter_delivereds.json
  def index
    @water_liter_delivereds = WaterLiterDelivered.all
  end

  # GET /water_liter_delivereds/1
  # GET /water_liter_delivereds/1.json
  def show
  end

  # GET /water_liter_delivereds/new
  def new
    @water_liter_delivered = current_user.water_liter_delivereds.build
  end

  # GET /water_liter_delivereds/1/edit
  def edit
  end

  # POST /water_liter_delivereds
  # POST /water_liter_delivereds.json
  def create
    @water_liter_delivered = current_user.water_liter_delivereds.build(water_liter_delivered_params)

    respond_to do |format|
      if @water_liter_delivered.save
        format.html { redirect_to @water_liter_delivered, notice: 'Water liter delivered was successfully created.' }
        format.json { render :show, status: :created, location: @water_liter_delivered }
      else
        format.html { render :new }
        format.json { render json: @water_liter_delivered.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_liter_delivereds/1
  # PATCH/PUT /water_liter_delivereds/1.json
  def update
    respond_to do |format|
      if @water_liter_delivered.update(water_liter_delivered_params)
        format.html { redirect_to @water_liter_delivered, notice: 'Water liter delivered was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_liter_delivered }
      else
        format.html { render :edit }
        format.json { render json: @water_liter_delivered.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_liter_delivereds/1
  # DELETE /water_liter_delivereds/1.json
  def destroy
    @water_liter_delivered.destroy
    respond_to do |format|
      format.html { redirect_to water_liter_delivereds_url, notice: 'Water liter delivered was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_liter_delivered
      @water_liter_delivered = WaterLiterDelivered.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def water_liter_delivered_params
      params.require(:water_liter_delivered).permit(:quantity, :date, :user_id, :district_id)
    end
end
