class KategoriPembayaransController < ApplicationController
  before_action :set_kategori_pembayaran, only: [:show, :edit, :update, :destroy]

  # GET /kategori_pembayarans
  # GET /kategori_pembayarans.json
  def index
    @kategori_pembayarans = KategoriPembayaran.all
  end

  # GET /kategori_pembayarans/1
  # GET /kategori_pembayarans/1.json
  def show
  end

  # GET /kategori_pembayarans/new
  def new
    @kategori_pembayaran = KategoriPembayaran.new
  end

  # GET /kategori_pembayarans/1/edit
  def edit
  end

  # POST /kategori_pembayarans
  # POST /kategori_pembayarans.json
  def create
    @kategori_pembayaran = KategoriPembayaran.new(kategori_pembayaran_params)

    respond_to do |format|
      if @kategori_pembayaran.save
        format.html { redirect_to @kategori_pembayaran, notice: 'Kategori pembayaran was successfully created.' }
        format.json { render :show, status: :created, location: @kategori_pembayaran }
      else
        format.html { render :new }
        format.json { render json: @kategori_pembayaran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kategori_pembayarans/1
  # PATCH/PUT /kategori_pembayarans/1.json
  def update
    respond_to do |format|
      if @kategori_pembayaran.update(kategori_pembayaran_params)
        format.html { redirect_to @kategori_pembayaran, notice: 'Kategori pembayaran was successfully updated.' }
        format.json { render :show, status: :ok, location: @kategori_pembayaran }
      else
        format.html { render :edit }
        format.json { render json: @kategori_pembayaran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kategori_pembayarans/1
  # DELETE /kategori_pembayarans/1.json
  def destroy
    @kategori_pembayaran.destroy
    respond_to do |format|
      format.html { redirect_to kategori_pembayarans_url, notice: 'Kategori pembayaran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kategori_pembayaran
      @kategori_pembayaran = KategoriPembayaran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kategori_pembayaran_params
      params.require(:kategori_pembayaran).permit(:katagori_pembayaran, :nominal)
    end
end
