class PembayaransController < ApplicationController
  before_action :set_pembayaran, only: [:show, :edit, :update, :destroy]

  # GET /pembayarans
  # GET /pembayarans.json
  def index
    @pembayarans = Pembayaran.all
  end

  # GET /pembayarans/1
  # GET /pembayarans/1.json
  def show
  end

  # GET /pembayarans/new
  def new
    @pembayaran = Pembayaran.new
  end

  # GET /pembayarans/1/edit
  def edit
  end

  # POST /pembayarans
  # POST /pembayarans.json
  def create
    @pembayaran = Pembayaran.new(pembayaran_params)

    respond_to do |format|
      if @pembayaran.save
        format.html { redirect_to @pembayaran, notice: 'Pembayaran was successfully created.' }
        format.json { render :show, status: :created, location: @pembayaran }
      else
        format.html { render :new }
        format.json { render json: @pembayaran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pembayarans/1
  # PATCH/PUT /pembayarans/1.json
  def update
    respond_to do |format|
      if @pembayaran.update(pembayaran_params)
        format.html { redirect_to @pembayaran, notice: 'Pembayaran was successfully updated.' }
        format.json { render :show, status: :ok, location: @pembayaran }
      else
        format.html { render :edit }
        format.json { render json: @pembayaran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pembayarans/1
  # DELETE /pembayarans/1.json
  def destroy
    @pembayaran.destroy
    respond_to do |format|
      format.html { redirect_to pembayarans_url, notice: 'Pembayaran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pembayaran
      @pembayaran = Pembayaran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pembayaran_params
      params.require(:pembayaran).permit(:akun_id, :kategori_kegiatan_id, :nominal, :cicilan, :keterangan, :id_bendahara)
    end
end
