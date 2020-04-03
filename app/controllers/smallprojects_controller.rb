class SmallprojectsController < ApplicationController
  before_action :set_smallproject, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /smallprojects
  # GET /smallprojects.json
  def index
    @smallprojects = Smallproject.all
  end

  # GET /smallprojects/1
  # GET /smallprojects/1.json
  def show
  end

  # GET /smallprojects/new
  def new
    @smallproject = current_user.smallprojects.build
  end

  # GET /smallprojects/1/edit
  def edit
  end

  # POST /smallprojects
  # POST /smallprojects.json
  def create
    @smallproject = current_user.smallprojects.build(smallproject_params)

    respond_to do |format|
      if @smallproject.save
        format.html { redirect_to @smallproject, notice: 'Smallproject was successfully created.' }
        format.json { render :show, status: :created, location: @smallproject }
      else
        format.html { render :new }
        format.json { render json: @smallproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smallprojects/1
  # PATCH/PUT /smallprojects/1.json
  def update
    respond_to do |format|
      if @smallproject.update(smallproject_params)
        format.html { redirect_to @smallproject, notice: 'Smallproject was successfully updated.' }
        format.json { render :show, status: :ok, location: @smallproject }
      else
        format.html { render :edit }
        format.json { render json: @smallproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smallprojects/1
  # DELETE /smallprojects/1.json
  def destroy
    @smallproject.destroy
    respond_to do |format|
      format.html { redirect_to smallprojects_url, notice: 'Smallproject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smallproject
      @smallproject = Smallproject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def smallproject_params
      params.require(:smallproject).permit(:user_id, :date, :smallproject, :total_wo_thrad_btat, :product_thrad, :product_btat, :product_total, :detailed_production, :albaha, :bljorashy, :alqora, :almandaq, :alaqeq, :almekhwah, :qolwah, :alhgrah)
    end
end
