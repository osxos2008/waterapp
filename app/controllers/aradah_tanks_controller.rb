class AradahTanksController < ApplicationController
  before_action :set_aradah_tank, only: [:show, :edit, :update, :destroy]

  # GET /aradah_tanks
  # GET /aradah_tanks.json
  def index
    @aradah_tanks = AradahTank.all
  end

  # GET /aradah_tanks/1
  # GET /aradah_tanks/1.json
  def show
  end

  # GET /aradah_tanks/new
  def new
    @aradah_tank = AradahTank.new
  end

  # GET /aradah_tanks/1/edit
  def edit
  end

  # POST /aradah_tanks
  # POST /aradah_tanks.json
  def create
    @aradah_tank = AradahTank.new(aradah_tank_params)

    respond_to do |format|
      if @aradah_tank.save
        format.html { redirect_to @aradah_tank, notice: 'Aradah tank was successfully created.' }
        format.json { render :show, status: :created, location: @aradah_tank }
      else
        format.html { render :new }
        format.json { render json: @aradah_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aradah_tanks/1
  # PATCH/PUT /aradah_tanks/1.json
  def update
    respond_to do |format|
      if @aradah_tank.update(aradah_tank_params)
        format.html { redirect_to @aradah_tank, notice: 'Aradah tank was successfully updated.' }
        format.json { render :show, status: :ok, location: @aradah_tank }
      else
        format.html { render :edit }
        format.json { render json: @aradah_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aradah_tanks/1
  # DELETE /aradah_tanks/1.json
  def destroy
    @aradah_tank.destroy
    respond_to do |format|
      format.html { redirect_to aradah_tanks_url, notice: 'Aradah tank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aradah_tank
      @aradah_tank = AradahTank.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aradah_tank_params
      params.require(:aradah_tank).permit(:date, :user_id, :aradah_plant_tank, :naqal_plant1_tnak, :mashoqah_plant2_tank, :ras_manhal_plant3_tank, :alqesma_plant4_tank, :thraween_plant5_tank, :bani_adwan_tank, :mashoqa_tank, :bedah_tank, :al_musa_tank, :marawah_tank, :qaran_dabi_tank, :alhalah_tank, :balqazmar_tank, :bani_hasan_tank, :alqalab_tank, :daws_tank, :sayhan_tank, :alkahelah_tank, :balhakam_tank, :aljwfaa_tank)
    end
end
