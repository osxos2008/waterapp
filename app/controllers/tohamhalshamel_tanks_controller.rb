class TohamhalshamelTanksController < ApplicationController
  before_action :set_tohamhalshamel_tank, only: [:show, :edit, :update, :destroy]

  # GET /tohamhalshamel_tanks
  # GET /tohamhalshamel_tanks.json
  def index
    @tohamhalshamel_tanks = TohamhalshamelTank.all
  end

  # GET /tohamhalshamel_tanks/1
  # GET /tohamhalshamel_tanks/1.json
  def show
  end

  # GET /tohamhalshamel_tanks/new
  def new
    @tohamhalshamel_tank = TohamhalshamelTank.new
  end

  # GET /tohamhalshamel_tanks/1/edit
  def edit
  end

  # POST /tohamhalshamel_tanks
  # POST /tohamhalshamel_tanks.json
  def create
    @tohamhalshamel_tank = TohamhalshamelTank.new(tohamhalshamel_tank_params)

    respond_to do |format|
      if @tohamhalshamel_tank.save
        format.html { redirect_to @tohamhalshamel_tank, notice: 'Tohamhalshamel tank was successfully created.' }
        format.json { render :show, status: :created, location: @tohamhalshamel_tank }
      else
        format.html { render :new }
        format.json { render json: @tohamhalshamel_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tohamhalshamel_tanks/1
  # PATCH/PUT /tohamhalshamel_tanks/1.json
  def update
    respond_to do |format|
      if @tohamhalshamel_tank.update(tohamhalshamel_tank_params)
        format.html { redirect_to @tohamhalshamel_tank, notice: 'Tohamhalshamel tank was successfully updated.' }
        format.json { render :show, status: :ok, location: @tohamhalshamel_tank }
      else
        format.html { render :edit }
        format.json { render json: @tohamhalshamel_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tohamhalshamel_tanks/1
  # DELETE /tohamhalshamel_tanks/1.json
  def destroy
    @tohamhalshamel_tank.destroy
    respond_to do |format|
      format.html { redirect_to tohamhalshamel_tanks_url, notice: 'Tohamhalshamel tank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tohamhalshamel_tank
      @tohamhalshamel_tank = TohamhalshamelTank.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tohamhalshamel_tank_params
      params.require(:tohamhalshamel_tank).permit(:date, :user_id, :almaqwa_plant_tank, :gamed_znad_tank1, :gamed_znad_tank2, :gamed_znad_tajmee3_tank3, :nasbah_plant_tank, :almswadah_tank, :nasbah_tank, :alahsabah_tank, :nawan_tank, :maqwah_tajme3_tank, :maqwah_north_plant_tank, :maqwah_north_tank, :mamna_plant_tank, :mamna_tank, :nera_plant1_tank, :nera_plant2_tank, :nera3_tank, :qelwah_plant_tank, :qelwah_tajme3_Tank, :dogah_plant_tank, :dogah_tank, :rmaydah_tank, :hajrah_tank, :bani_ata_plant_tank, :bani_ata_tank, :aljareen_tank)
    end
end
