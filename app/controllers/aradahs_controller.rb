class AradahsController < ApplicationController
  before_action :set_aradah, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /aradahs
  # GET /aradahs.json
  def index
    @aradahs = Aradah.all
  end

  # GET /aradahs/1
  # GET /aradahs/1.json
  def show
  end

  # GET /aradahs/new
  def new
    @aradah = current_user.aradahs.build
  end

  # GET /aradahs/1/edit
  def edit
  end

  # POST /aradahs
  # POST /aradahs.json
  def create
    @aradah = current_user.aradahs.build(aradah_params)

    respond_to do |format|
      if @aradah.save
        format.html { redirect_to new_aradah_path, notice: 'Aradah was successfully created.' }
        format.json { render :show, status: :created, location: @aradah }
      else
        format.html { render :new }
        format.json { render json: @aradah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aradahs/1
  # PATCH/PUT /aradahs/1.json
  def update
    respond_to do |format|
      if @aradah.update(aradah_params)
        format.html { redirect_to @aradah, notice: 'Aradah was successfully updated.' }
        format.json { render :show, status: :ok, location: @aradah }
      else
        format.html { render :edit }
        format.json { render json: @aradah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aradahs/1
  # DELETE /aradahs/1.json
  def destroy
    @aradah.destroy
    respond_to do |format|
      format.html { redirect_to aradahs_url, notice: 'Aradah was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aradah
      @aradah = Aradah.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aradah_params
      params.require(:aradah).permit(:user_id, :date, :product, :wells, :from_thrawen_tank, :product_total, :distribution, :networks, :qnet_alqsmh, :qnet_althrawen, :qnet_althrawen_alatawlah, :qnet_bneedwan1, :qnet_bneedwan2, :qnet_bedah, :qnet_mashoqah, :mrawah, :qnet_total, :bnenet_blkhzmr, :bnenet_bnehasan, :bnenet_total, :mnet_alhalah, :mnet_alkhlb, :mnet_dos, :mnet_alkahla1, :mnet_alkahla2, :mnet_sehan, :mnet_blhkm, :mnet_aljawfaa, :mnet_total, :bnet_almosa, :bnet_qrnthbe, :bnet_total, :network_total, :almnahel, :qshep_nkhal, :qshep_alqsmh, :qshep_althrawen, :qshep_bneodwan, :qshep_mashoqah, :qshep_total, :bneshep_blkhzmr, :bneshep_bnehasan, :bneshep_total, :mshep_alhalah, :mshep_dos, :mshep_total, :bshep_almosa, :mnahel_total, :distripution_total)
    end
end
