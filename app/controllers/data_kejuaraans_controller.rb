class DataKejuaraansController < ApplicationController
  before_action :set_data_kejuaraan, only: [:show, :edit, :update, :destroy]

  # GET /data_kejuaraans
  # GET /data_kejuaraans.json
  def index
    @data_kejuaraans = DataKejuaraan.all
    # @row_number = ((params[:page] - 1) * per_page) + 1
  end

  # GET /data_kejuaraans/1
  # GET /data_kejuaraans/1.json
  def show
  end

  # GET /data_kejuaraans/new
  def new
    @data_kejuaraan = DataKejuaraan.new
  end

  # GET /data_kejuaraans/1/edit
  def edit
  end

  # POST /data_kejuaraans
  # POST /data_kejuaraans.json
  def create
    @data_kejuaraan = DataKejuaraan.new(data_kejuaraan_params)
    @kegiatan = Kegiatan.select(@data_kejuaraan.kegiatan_id)
    
    respond_to do |format|
      if @data_kejuaraan.save
        format.html { redirect_to @data_kejuaraan, notice: 'Data kejuaraan was successfully created.' }
        format.json { render :show, status: :created, location: @data_kejuaraan }
      else
        format.html { render :new }
        format.json { render json: @data_kejuaraan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_kejuaraans/1
  # PATCH/PUT /data_kejuaraans/1.json
  def update
    respond_to do |format|
      if @data_kejuaraan.update(data_kejuaraan_params)
        format.html { redirect_to @data_kejuaraan, notice: 'Data kejuaraan was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_kejuaraan }
      else
        format.html { render :edit }
        format.json { render json: @data_kejuaraan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_kejuaraans/1
  # DELETE /data_kejuaraans/1.json
  def destroy
    @data_kejuaraan.destroy
    respond_to do |format|
      format.html { redirect_to data_kejuaraans_url, notice: 'Data kejuaraan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_kejuaraan
      @data_kejuaraan = DataKejuaraan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_kejuaraan_params
      params.require(:data_kejuaraan).permit(:kegiatan_id, :jumlah_peserta, :emas, :perak, :perunggu, :jumlah_total_medali, :keterangan)
    end
end
