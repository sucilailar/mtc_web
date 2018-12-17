class AkunsController < ApplicationController
  before_action :set_akun, only: [:show, :edit, :update, :destroy]

  # GET /akuns
  # GET /akuns.json
  def index
    @akuns = Akun.all
  end

  # GET /akuns/1
  # GET /akuns/1.json
  def show
  end

  # GET /akuns/new
  def new
    @akun = Akun.new
  end

  # GET /akuns/1/edit
  def edit
  end

  # POST /akuns
  # POST /akuns.json
  def create
    @akun = Akun.new(akun_params)

    respond_to do |format|
      if @akun.save
        format.html { redirect_to @akun, notice: 'Akun was successfully created.' }
        format.json { render :show, status: :created, location: @akun }
      else
        format.html { render :new }
        format.json { render json: @akun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /akuns/1
  # PATCH/PUT /akuns/1.json
  def update
    respond_to do |format|
      if @akun.update(akun_params)
        format.html { redirect_to @akun, notice: 'Akun was successfully updated.' }
        format.json { render :show, status: :ok, location: @akun }
      else
        format.html { render :edit }
        format.json { render json: @akun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /akuns/1
  # DELETE /akuns/1.json
  def destroy
    @akun.destroy
    respond_to do |format|
      format.html { redirect_to akuns_url, notice: 'Akun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_akun
      @akun = Akun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def akun_params
      params.require(:akun).permit(:no_reg, :nama, :tempat_lahir, :tgl_lahir, :geup, :alamat, :dojang, :tahun_masuk, :angkatan, :pekerjaan, :role_id)
    end
end
