class AljnabensController < ApplicationController
  before_action :set_aljnaben, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /aljnabens
  # GET /aljnabens.json
  def index
    @aljnabens = Aljnaben.all
  end

  # GET /aljnabens/1
  # GET /aljnabens/1.json
  def show
  end

  # GET /aljnabens/new
  def new
    @aljnaben = current_user.aljnabens.build
  end

  # GET /aljnabens/1/edit
  def edit
  end

  # POST /aljnabens
  # POST /aljnabens.json
  def create
    @aljnaben = current_user.aljnabens.build(aljnaben_params)

    respond_to do |format|
      if @aljnaben.save
        format.html { redirect_to @aljnaben, notice: 'تم حفظ بيانات مشروع الجنابين بنجاح.' }
        format.json { render :show, status: :created, location: @aljnaben }
      else
        format.html { render :new }
        format.json { render json: @aljnaben.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aljnabens/1
  # PATCH/PUT /aljnabens/1.json
  def update
    respond_to do |format|
      if @aljnaben.update(aljnaben_params)
        format.html { redirect_to @aljnaben, notice: 'Aljnaben was successfully updated.' }
        format.json { render :show, status: :ok, location: @aljnaben }
      else
        format.html { render :edit }
        format.json { render json: @aljnaben.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aljnabens/1
  # DELETE /aljnabens/1.json
  def destroy
    @aljnaben.destroy
    respond_to do |format|
      format.html { redirect_to aljnabens_url, notice: 'Aljnaben was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aljnaben
      @aljnaben = Aljnaben.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aljnaben_params
      params.require(:aljnaben).permit(:user_id, :date, :product, :purification_station, :alrahwah_Well, :quantity_sent_from_desalination, :product_total, :distribution, :networks, :abdaan, :alfrya, :alqame, :shra, :alrahwah, :networks_total, :almnahel, :aljbail_aljnaben, :distribution_total)
    end
end
