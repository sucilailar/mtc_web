class DojangsController < ApplicationController
  before_action :set_dojang, only: [:show, :edit, :update, :destroy]

  # GET /dojangs
  # GET /dojangs.json
  def index
    @dojangs = Dojang.all
  end

  # GET /dojangs/1
  # GET /dojangs/1.json
  def show
  end

  # GET /dojangs/new
  def new
    @dojang = Dojang.new
  end

  # GET /dojangs/1/edit
  def edit
  end

  # POST /dojangs
  # POST /dojangs.json
  def create
    @dojang = Dojang.new(dojang_params)

    respond_to do |format|
      if @dojang.save
        format.html { redirect_to @dojang, notice: 'Dojang was successfully created.' }
        format.json { render :show, status: :created, location: @dojang }
      else
        format.html { render :new }
        format.json { render json: @dojang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dojangs/1
  # PATCH/PUT /dojangs/1.json
  def update
    respond_to do |format|
      if @dojang.update(dojang_params)
        format.html { redirect_to @dojang, notice: 'Dojang was successfully updated.' }
        format.json { render :show, status: :ok, location: @dojang }
      else
        format.html { render :edit }
        format.json { render json: @dojang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dojangs/1
  # DELETE /dojangs/1.json
  def destroy
    @dojang.destroy
    respond_to do |format|
      format.html { redirect_to dojangs_url, notice: 'Dojang was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dojang
      @dojang = Dojang.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dojang_params
      params.require(:dojang).permit(:nama_dojang, :alamat)
    end
end
