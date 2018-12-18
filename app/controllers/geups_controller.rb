class GeupsController < ApplicationController
  before_action :set_geup, only: [:show, :edit, :update, :destroy]

  # GET /geups
  # GET /geups.json
  def index
    @geups = Geup.all
  end

  # GET /geups/1
  # GET /geups/1.json
  def show
  end

  # GET /geups/new
  def new
    @geup = Geup.new
  end

  # GET /geups/1/edit
  def edit
  end

  # POST /geups
  # POST /geups.json
  def create
    @geup = Geup.new(geup_params)

    respond_to do |format|
      if @geup.save
        format.html { redirect_to @geup, notice: 'Geup was successfully created.' }
        format.json { render :show, status: :created, location: @geup }
      else
        format.html { render :new }
        format.json { render json: @geup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geups/1
  # PATCH/PUT /geups/1.json
  def update
    respond_to do |format|
      if @geup.update(geup_params)
        format.html { redirect_to @geup, notice: 'Geup was successfully updated.' }
        format.json { render :show, status: :ok, location: @geup }
      else
        format.html { render :edit }
        format.json { render json: @geup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geups/1
  # DELETE /geups/1.json
  def destroy
    @geup.destroy
    respond_to do |format|
      format.html { redirect_to geups_url, notice: 'Geup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geup
      @geup = Geup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geup_params
      params.require(:geup).permit(:geup, :warna_string)
    end
end
