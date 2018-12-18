class PengurusController < ApplicationController
  before_action :set_penguru, only: [:show, :edit, :update, :destroy]

  # GET /pengurus
  # GET /pengurus.json
  def index
    @pengurus = Penguru.all
  end

  # GET /pengurus/1
  # GET /pengurus/1.json
  def show
  end

  # GET /pengurus/new
  def new
    @penguru = Penguru.new
  end

  # GET /pengurus/1/edit
  def edit
  end

  # POST /pengurus
  # POST /pengurus.json
  def create
    @penguru = Penguru.new(penguru_params)

    respond_to do |format|
      if @penguru.save
        format.html { redirect_to @penguru, notice: 'Penguru was successfully created.' }
        format.json { render :show, status: :created, location: @penguru }
      else
        format.html { render :new }
        format.json { render json: @penguru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pengurus/1
  # PATCH/PUT /pengurus/1.json
  def update
    respond_to do |format|
      if @penguru.update(penguru_params)
        format.html { redirect_to @penguru, notice: 'Penguru was successfully updated.' }
        format.json { render :show, status: :ok, location: @penguru }
      else
        format.html { render :edit }
        format.json { render json: @penguru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pengurus/1
  # DELETE /pengurus/1.json
  def destroy
    @penguru.destroy
    respond_to do |format|
      format.html { redirect_to pengurus_url, notice: 'Penguru was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_penguru
      @penguru = Penguru.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def penguru_params
      params.require(:penguru).permit(:akun_id, :role_id, :periode_awal, :periode_akhir)
    end
end
