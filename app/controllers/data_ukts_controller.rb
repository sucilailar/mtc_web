class DataUktsController < ApplicationController
  before_action :set_data_ukt, only: [:show, :edit, :update, :destroy]

  # GET /data_ukts
  # GET /data_ukts.json
  def index
    @data_ukts = DataUkt.all
  end

  # GET /data_ukts/1
  # GET /data_ukts/1.json
  def show
  end

  # GET /data_ukts/new
  def new
    @data_ukt = DataUkt.new
  end

  # GET /data_ukts/1/edit
  def edit
  end

  # POST /data_ukts
  # POST /data_ukts.json
  def create
    @data_ukt = DataUkt.new(data_ukt_params)

    respond_to do |format|
      if @data_ukt.save
        format.html { redirect_to @data_ukt, notice: 'Data ukt was successfully created.' }
        format.json { render :show, status: :created, location: @data_ukt }
      else
        format.html { render :new }
        format.json { render json: @data_ukt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_ukts/1
  # PATCH/PUT /data_ukts/1.json
  def update
    respond_to do |format|
      if @data_ukt.update(data_ukt_params)
        format.html { redirect_to @data_ukt, notice: 'Data ukt was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_ukt }
      else
        format.html { render :edit }
        format.json { render json: @data_ukt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_ukts/1
  # DELETE /data_ukts/1.json
  def destroy
    @data_ukt.destroy
    respond_to do |format|
      format.html { redirect_to data_ukts_url, notice: 'Data ukt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_ukt
      @data_ukt = DataUkt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_ukt_params
      params.require(:data_ukt).permit(:periode, :sabuk_putih, :sabuk_kuning_polos, :sabuk_kuning_strip, :sabuk_hijau_polos, :sabuk_hijau_strip, :sabuk_biru_polos, :sabuk_biru_strip, :sabuk_merah_polos, :sabuk_merah_strip_satu, :sabuk_merah_strip_dua, :jumlah)
    end
end
