class AqiqsController < ApplicationController
  before_action :set_aqiq, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /aqiqs
  # GET /aqiqs.json
  def index
    @aqiqs = Aqiq.all
  end

  # GET /aqiqs/1
  # GET /aqiqs/1.json
  def show
  end

  # GET /aqiqs/new
  def new
    @aqiq = current_user.aqiqs.build
  end

  # GET /aqiqs/1/edit
  def edit
  end

  # POST /aqiqs
  # POST /aqiqs.json
  def create
    @aqiq = current_user.aqiqs.build(aqiq_params)

    respond_to do |format|
      if @aqiq.save
        format.html { redirect_to new_aqiq_path, notice: 'Aqiq was successfully created.' }
        format.json { render :show, status: :created, location: @aqiq }
      else
        format.html { render :new }
        format.json { render json: @aqiq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aqiqs/1
  # PATCH/PUT /aqiqs/1.json
  def update
    respond_to do |format|
      if @aqiq.update(aqiq_params)
        format.html { redirect_to @aqiq, notice: 'Aqiq was successfully updated.' }
        format.json { render :show, status: :ok, location: @aqiq }
      else
        format.html { render :edit }
        format.json { render json: @aqiq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aqiqs/1
  # DELETE /aqiqs/1.json
  def destroy
    @aqiq.destroy
    respond_to do |format|
      format.html { redirect_to aqiqs_url, notice: 'Aqiq was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aqiq
      @aqiq = Aqiq.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aqiq_params
      params.require(:aqiq).permit(:date, :user_id, :product, :aqiq_produce, :thrad_produce, :from_althlya_to_almzree, :from_althlya_to_baljurashy, :from_althlya_to_shahba, :from_althlya_to_aradah, :from_althlya_to_abdan, :total_produce, :distribution, :albaha_shahba1, :albaha_shahba2, :almzree, :bany_dhabyan, :almusa, :total_albaha_distribution, :baljurashy, :bany_kaber, :alhbees, :bany_saeed, :bany_heda, :algabar_alawla, :algabar_alsufla, :baljurashy_total_distribution, :blue, :jarab, :alaunog, :almshereef, :alamer_faisal_Tank, :aqiq_total_distribution, :almnahel, :almzree_mnahel, :baljurashy_mnahel, :bany_kabeer_mnahel, :allehyan_mnahel, :alsenaeeh_mnahel, :almnahel_total, :total_distribution)
    end
end
