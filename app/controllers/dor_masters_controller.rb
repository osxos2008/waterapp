class DorMastersController < ApplicationController
  before_action :set_dor_master, only: [:show, :edit, :update, :destroy]

  # GET /dor_masters
  # GET /dor_masters.json
  def index
    @dor_masters = DorMaster.all
    respond_to do |format|
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename=DOR.xlsx"
      }
      format.html { render :index }
    end
  end

  # GET /dor_masters/1
  # GET /dor_masters/1.json
  def show
  end

  # GET /dor_masters/new
  def new
    @dor_master = DorMaster.new
  end

  # GET /dor_masters/1/edit
  def edit
  end

  # POST /dor_masters
  # POST /dor_masters.json
  def create
    @dor_master = DorMaster.new(dor_master_params)

    respond_to do |format|
      if @dor_master.save
        format.html { redirect_to @dor_master, notice: 'Dor master was successfully created.' }
        format.json { render :show, status: :created, location: @dor_master }
      else
        format.html { render :new }
        format.json { render json: @dor_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dor_masters/1
  # PATCH/PUT /dor_masters/1.json
  def update
    respond_to do |format|
      if @dor_master.update(dor_master_params)
        format.html { redirect_to @dor_master, notice: 'Dor master was successfully updated.' }
        format.json { render :show, status: :ok, location: @dor_master }
      else
        format.html { render :edit }
        format.json { render json: @dor_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dor_masters/1
  # DELETE /dor_masters/1.json
  def destroy
    @dor_master.destroy
    respond_to do |format|
      format.html { redirect_to dor_masters_url, notice: 'Dor master was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dor_master
      @dor_master = DorMaster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dor_master_params
      params.require(:dor_master).permit(:date, :user_id)
    end
  end
