class KejuaraansController < ApplicationController
  before_action :set_kejuaraan, only: [:show, :edit, :update, :destroy]

  # GET /kejuaraans
  # GET /kejuaraans.json
  def index
    @kejuaraans = Kejuaraan.all
  end

  # GET /kejuaraans/1
  # GET /kejuaraans/1.json
  def show
  end

  # GET /kejuaraans/new
  def new
    @kejuaraan = Kejuaraan.new
  end

  # GET /kejuaraans/1/edit
  def edit
  end

  # POST /kejuaraans
  # POST /kejuaraans.json
  def create
    @kejuaraan = Kejuaraan.new(kejuaraan_params)

    respond_to do |format|
      if @kejuaraan.save
        format.html { redirect_to @kejuaraan, notice: 'Kejuaraan was successfully created.' }
        format.json { render :show, status: :created, location: @kejuaraan }
      else
        format.html { render :new }
        format.json { render json: @kejuaraan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kejuaraans/1
  # PATCH/PUT /kejuaraans/1.json
  def update
    respond_to do |format|
      if @kejuaraan.update(kejuaraan_params)
        format.html { redirect_to @kejuaraan, notice: 'Kejuaraan was successfully updated.' }
        format.json { render :show, status: :ok, location: @kejuaraan }
      else
        format.html { render :edit }
        format.json { render json: @kejuaraan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kejuaraans/1
  # DELETE /kejuaraans/1.json
  def destroy
    @kejuaraan.destroy
    respond_to do |format|
      format.html { redirect_to kejuaraans_url, notice: 'Kejuaraan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kejuaraan
      @kejuaraan = Kejuaraan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kejuaraan_params
      params.require(:kejuaraan).permit(:peserta_id, :event_id, :perolehan, :kategori_under, :jenis_kejuaraan, :prestasi_pemula, :tingkat)
    end
end
