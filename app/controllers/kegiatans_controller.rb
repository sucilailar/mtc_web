class KegiatansController < ApplicationController
  before_action :set_kegiatan, only: [:show, :edit, :update, :destroy]

  # GET /kegiatans
  # GET /kegiatans.json
  def index
    @kegiatans = Kegiatan.all
  end

  # GET /kegiatans/1
  # GET /kegiatans/1.json
  def show
  end

  # GET /kegiatans/new
  def new
    @kegiatan = Kegiatan.new
  end

  # GET /kegiatans/1/edit
  def edit
  end

  # POST /kegiatans
  # POST /kegiatans.json
  def create
    @kegiatan = Kegiatan.new(kegiatan_params)

    respond_to do |format|
      if @kegiatan.save
        format.html { redirect_to @kegiatan, notice: 'Kegiatan was successfully created.' }
        format.json { render :show, status: :created, location: @kegiatan }
      else
        format.html { render :new }
        format.json { render json: @kegiatan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kegiatans/1
  # PATCH/PUT /kegiatans/1.json
  def update
    respond_to do |format|
      if @kegiatan.update(kegiatan_params)
        format.html { redirect_to @kegiatan, notice: 'Kegiatan was successfully updated.' }
        format.json { render :show, status: :ok, location: @kegiatan }
      else
        format.html { render :edit }
        format.json { render json: @kegiatan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kegiatans/1
  # DELETE /kegiatans/1.json
  def destroy
    @kegiatan.destroy
    respond_to do |format|
      format.html { redirect_to kegiatans_url, notice: 'Kegiatan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kegiatan
      @kegiatan = Kegiatan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kegiatan_params
      params.require(:kegiatan).permit(:nama_kegiatan, :tempat, :tgl, :biaya)
    end
end
