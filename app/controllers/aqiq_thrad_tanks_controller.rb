class AqiqThradTanksController < ApplicationController
  before_action :set_aqiq_thrad_tank, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /aqiq_thrad_tanks
  # GET /aqiq_thrad_tanks.json
  def index
    @aqiq_thrad_tanks = AqiqThradTank.all
  end

  # GET /aqiq_thrad_tanks/1
  # GET /aqiq_thrad_tanks/1.json
  def show
  end

  # GET /aqiq_thrad_tanks/new
  def new
    @aqiq_thrad_tank = current_user.aqiq_thrad_tanks.build
  end

  # GET /aqiq_thrad_tanks/1/edit
  def edit
  end

  # POST /aqiq_thrad_tanks
  # POST /aqiq_thrad_tanks.json
  def create
    @aqiq_thrad_tank = current_user.aqiq_thrad_tanks.build(aqiq_thrad_tank_params)

    respond_to do |format|
      if @aqiq_thrad_tank.save
        format.html { redirect_to new_aqiq_thrad_tank_path, notice: 'Aqiq thrad tank was successfully created.' }
        format.json { render :show, status: :created, location: @aqiq_thrad_tank }
      else
        format.html { render :new }
        format.json { render json: @aqiq_thrad_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aqiq_thrad_tanks/1
  # PATCH/PUT /aqiq_thrad_tanks/1.json
  def update
    respond_to do |format|
      if @aqiq_thrad_tank.update(aqiq_thrad_tank_params)
        format.html { redirect_to @aqiq_thrad_tank, notice: 'Aqiq thrad tank was successfully updated.' }
        format.json { render :show, status: :ok, location: @aqiq_thrad_tank }
      else
        format.html { render :edit }
        format.json { render json: @aqiq_thrad_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aqiq_thrad_tanks/1
  # DELETE /aqiq_thrad_tanks/1.json
  def destroy
    @aqiq_thrad_tank.destroy
    respond_to do |format|
      format.html { redirect_to aqiq_thrad_tanks_url, notice: 'Aqiq thrad tank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aqiq_thrad_tank
      @aqiq_thrad_tank = AqiqThradTank.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aqiq_thrad_tank_params
      params.require(:aqiq_thrad_tank).permit(:date, :user_id, :aqiq_station1, :aqiq_station2, :aqiq_station3, :aqiq_station4, :shahbah_tank, :bani_kaber_tank, :bani_dhabyan_station_tank, :bani_dahabyan_tank, :bani_hedah_tank, :baljurashy_tank, :thrad_station1_tank, :susabad_station_tank, :mushereef_tank, :aunoq_tank, :jarab_tank, :blue_tank, :thrad_station2_tank, :thrad_station3_tank, :thrad_station4_tank, :almzree_tank, :thrad_station5_tank, :bani_saeed_tank, :aom_gayth_tank)
    end
end
