class SuratsController < ApplicationController
  before_action :set_surat, only: [:show, :edit, :update, :destroy]

  # GET /surats
  # GET /surats.json
  def index
    @surats = Surat.all
  end

  # GET /surats/1
  # GET /surats/1.json
  def show
  end

  # GET /surats/new
  def new
    @surat = Surat.new
  end

  # GET /surats/1/edit
  def edit
  end

  # POST /surats
  # POST /surats.json
  def create
    @surat = Surat.new(surat_params)

    respond_to do |format|
      if @surat.save
        format.html { redirect_to @surat, notice: 'Surat was successfully created.' }
        format.json { render :show, status: :created, location: @surat }
      else
        format.html { render :new }
        format.json { render json: @surat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surats/1
  # PATCH/PUT /surats/1.json
  def update
    respond_to do |format|
      if @surat.update(surat_params)
        format.html { redirect_to @surat, notice: 'Surat was successfully updated.' }
        format.json { render :show, status: :ok, location: @surat }
      else
        format.html { render :edit }
        format.json { render json: @surat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surats/1
  # DELETE /surats/1.json
  def destroy
    @surat.destroy
    respond_to do |format|
      format.html { redirect_to surats_url, notice: 'Surat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surat
      @surat = Surat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surat_params
      params.require(:surat).permit(:no_surat, :perihal)
    end
end
