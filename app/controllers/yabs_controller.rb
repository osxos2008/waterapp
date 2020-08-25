class YabsController < ApplicationController
  before_action :set_yab, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /yabs
  # GET /yabs.json
  def index
    @yabs = Yab.all
  end

  # GET /yabs/1
  # GET /yabs/1.json
  def show
  end

  # GET /yabs/new
  def new
    @yab = current_user.yabs.build

  end

  # GET /yabs/1/edit
  def edit
  end

  # POST /yabs
  # POST /yabs.json
  def create
    @yab = current_user.yabs.build(yab_params)

    respond_to do |format|
      if @yab.save
        format.html { redirect_to @yab, notice: 'Yab was successfully created.' }
        format.json { render :show, status: :created, location: @yab }
      else
        format.html { render :new }
        format.json { render json: @yab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yabs/1
  # PATCH/PUT /yabs/1.json
  def update
    respond_to do |format|
      if @yab.update(yab_params)
        format.html { redirect_to @yab, notice: 'Yab was successfully updated.' }
        format.json { render :show, status: :ok, location: @yab }
      else
        format.html { render :edit }
        format.json { render json: @yab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yabs/1
  # DELETE /yabs/1.json
  def destroy
    @yab.destroy
    respond_to do |format|
      format.html { redirect_to yabs_url, notice: 'Yab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yab
      @yab = Yab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def yab_params
      params.require(:yab).permit(:date, :user_id, :yabs_produce, :yabs_distribution, :batat_distribution, :yabs_tank)
    end
end
