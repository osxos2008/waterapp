class AljnabeenTanksController < ApplicationController
  before_action :set_aljnabeen_tank, only: [:show, :edit, :update, :destroy]

  # GET /aljnabeen_tanks
  # GET /aljnabeen_tanks.json
  def index
    @aljnabeen_tanks = AljnabeenTank.all
  end

  # GET /aljnabeen_tanks/1
  # GET /aljnabeen_tanks/1.json
  def show
  end

  # GET /aljnabeen_tanks/new
  def new
    @aljnabeen_tank = AljnabeenTank.new
  end

  # GET /aljnabeen_tanks/1/edit
  def edit
  end

  # POST /aljnabeen_tanks
  # POST /aljnabeen_tanks.json
  def create
    @aljnabeen_tank = AljnabeenTank.new(aljnabeen_tank_params)

    respond_to do |format|
      if @aljnabeen_tank.save
        format.html { redirect_to @aljnabeen_tank, notice: 'Aljnabeen tank was successfully created.' }
        format.json { render :show, status: :created, location: @aljnabeen_tank }
      else
        format.html { render :new }
        format.json { render json: @aljnabeen_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aljnabeen_tanks/1
  # PATCH/PUT /aljnabeen_tanks/1.json
  def update
    respond_to do |format|
      if @aljnabeen_tank.update(aljnabeen_tank_params)
        format.html { redirect_to @aljnabeen_tank, notice: 'Aljnabeen tank was successfully updated.' }
        format.json { render :show, status: :ok, location: @aljnabeen_tank }
      else
        format.html { render :edit }
        format.json { render json: @aljnabeen_tank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aljnabeen_tanks/1
  # DELETE /aljnabeen_tanks/1.json
  def destroy
    @aljnabeen_tank.destroy
    respond_to do |format|
      format.html { redirect_to aljnabeen_tanks_url, notice: 'Aljnabeen tank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aljnabeen_tank
      @aljnabeen_tank = AljnabeenTank.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aljnabeen_tank_params
      params.require(:aljnabeen_tank).permit(:date, :user_id, :almontag_tank, :aljbeel_Tank, :abdan_tank, :alfryh_tank, :algema_tank, :shra_tank, :alrahwa_tank)
    end
end
