class TohamhalshamelsController < ApplicationController
  before_action :set_tohamhalshamel, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /tohamhalshamels
  # GET /tohamhalshamels.json
  def index
    @tohamhalshamels = Tohamhalshamel.all
  end

  # GET /tohamhalshamels/1
  # GET /tohamhalshamels/1.json
  def show
  end

  # GET /tohamhalshamels/new
  def new
    @tohamhalshamel = current_user.tohamhalshamels.build
  end

  # GET /tohamhalshamels/1/edit
  def edit
  end

  # POST /tohamhalshamels
  # POST /tohamhalshamels.json
  def create
    @tohamhalshamel = current_user.tohamhalshamels.build(tohamhalshamel_params)

    respond_to do |format|
      if @tohamhalshamel.save
        format.html { redirect_to new_tohamhalshamel_path, notice: 'Tohamhalshamel was successfully created.' }
        format.json { render :show, status: :created, location: @tohamhalshamel }
      else
        format.html { render :new }
        format.json { render json: @tohamhalshamel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tohamhalshamels/1
  # PATCH/PUT /tohamhalshamels/1.json
  def update
    respond_to do |format|
      if @tohamhalshamel.update(tohamhalshamel_params)
        format.html { redirect_to @tohamhalshamel, notice: 'Tohamhalshamel was successfully updated.' }
        format.json { render :show, status: :ok, location: @tohamhalshamel }
      else
        format.html { render :edit }
        format.json { render json: @tohamhalshamel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tohamhalshamels/1
  # DELETE /tohamhalshamels/1.json
  def destroy
    @tohamhalshamel.destroy
    respond_to do |format|
      format.html { redirect_to tohamhalshamels_url, notice: 'Tohamhalshamel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tohamhalshamel
      @tohamhalshamel = Tohamhalshamel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tohamhalshamel_params
      params.require(:tohamhalshamel).permit(:user_id, :date, :product, :alahsabiawell_almekhwah, :doqahwell_qlwah, :doqatabdulhamedwell, :elepwell_alhjrah, :alrmedahwell, :product_total, :distribution, :networks, :almekhwah, :qlwah, :doqatabdulhamed, :alhjrah, :networks_total, :almnahel, :ghamidalznad, :nsbah, :almswdah, :nawan, :shmalalmekhwah, :nera, :mmna, :bneatta, :algreen, :alrmedah, :almnahl_total, :distribution_total)
    end
end
