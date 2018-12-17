class UktsController < ApplicationController
  before_action :set_ukt, only: [:show, :edit, :update, :destroy]

  # GET /ukts
  # GET /ukts.json
  def index
    @ukts = Ukt.all.order(:nama => :asc)
  end

  def sort_geup
     @ukts = Ukt.all.order(:nama => :asc)
  end

  # GET /ukts/1
  # GET /ukts/1.json
  def show
  end

  # GET /ukts/new
  def new
    @ukt = Ukt.new
  end

  # GET /ukts/1/edit
  def edit
  end

  # POST /ukts
  # POST /ukts.json
  def create
    @ukt = Ukt.new(ukt_params)

    respond_to do |format|
      if @ukt.save
        format.html { redirect_to @ukt, notice: 'Ukt was successfully created.' }
        format.json { render :show, status: :created, location: @ukt }
      else
        format.html { render :new }
        format.json { render json: @ukt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ukts/1
  # PATCH/PUT /ukts/1.json
  def update
    respond_to do |format|
      if @ukt.update(ukt_params)
        format.html { redirect_to @ukt, notice: 'Ukt was successfully updated.' }
        format.json { render :show, status: :ok, location: @ukt }
      else
        format.html { render :edit }
        format.json { render json: @ukt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ukts/1
  # DELETE /ukts/1.json
  def destroy
    @ukt.destroy
    respond_to do |format|
      format.html { redirect_to ukts_url, notice: 'Ukt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ukt
      @ukt = Ukt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ukt_params
      params.require(:ukt).permit(:nama, :tempat, :tgl_lahir, :no_reg, :foto, :geup, :sabuk)
    end
end
