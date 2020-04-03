class AlashiabAlsoqiaController < ApplicationController
  before_action :set_alashiab_alsoqium, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /alashiab_alsoqia
  # GET /alashiab_alsoqia.json
  def index
    @alashiab_alsoqia = AlashiabAlsoqium.all
  end

  # GET /alashiab_alsoqia/1
  # GET /alashiab_alsoqia/1.json
  def show
  end

  # GET /alashiab_alsoqia/new
  def new
    @alashiab_alsoqium = current_user.alashiab_alsoqia.build
  end

  # GET /alashiab_alsoqia/1/edit
  def edit
  end

  # POST /alashiab_alsoqia
  # POST /alashiab_alsoqia.json
  def create
    @alashiab_alsoqium = current_user.alashiab_alsoqia.build(alashiab_alsoqium_params)

    respond_to do |format|
      if @alashiab_alsoqium.save
        format.html { redirect_to new_alashiab_alsoqium_path, notice: 'Alashiab alsoqium was successfully created.' }
        format.json { render :show, status: :created, location: @alashiab_alsoqium }
      else
        format.html { render :new }
        format.json { render json: @alashiab_alsoqium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alashiab_alsoqia/1
  # PATCH/PUT /alashiab_alsoqia/1.json
  def update
    respond_to do |format|
      if @alashiab_alsoqium.update(alashiab_alsoqium_params)
        format.html { redirect_to @alashiab_alsoqium, notice: 'Alashiab alsoqium was successfully updated.' }
        format.json { render :show, status: :ok, location: @alashiab_alsoqium }
      else
        format.html { render :edit }
        format.json { render json: @alashiab_alsoqium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alashiab_alsoqia/1
  # DELETE /alashiab_alsoqia/1.json
  def destroy
    @alashiab_alsoqium.destroy
    respond_to do |format|
      format.html { redirect_to alashiab_alsoqia_url, notice: 'Alashiab alsoqium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alashiab_alsoqium
      @alashiab_alsoqium = AlashiabAlsoqium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alashiab_alsoqium_params
      params.require(:alashiab_alsoqium).permit(:user_id, :date, :almzre_soqia, :almzre_naqlat, :bljorashy_soqia, :bljorashy_naqlat, :bnekbeer_soqia, :bnekbeer_naqlat, :almosa_soqia, :almosa_naqlat, :aljnaben_soqia, :aljnaben_naqlat, :alaqeq_soqia, :alaqeq_naqlat, :lef_soqia, :lef_naqlat, :bnehasan_soqia, :bnehasan_naqlat, :alhlah_soqia, :alhalah_naqlat, :dos_soqia, :dos_naqlat, :blkhzmr_soqia, :blkhzmr_naqlat, :bneadwan_soqia, :bneadwan_naqlat, :althrawen_soqia, :althrawen_naqlat, :alqsmh_soqia, :alqsmh_naqlat, :nbhan_soqia, :nbhan_naqlat, :nkhal_soqia, :nkhal_naqlat, :kra_soqia, :kra_naqlat, :ghamidalznad_soqia, :ghamidalznad_naqlat, :tota_soqia, :total_naqlat)
    end
end
