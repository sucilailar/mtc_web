class PjDojangsController < ApplicationController
  before_action :set_pj_dojang, only: [:show, :edit, :update, :destroy]

  # GET /pj_dojangs
  # GET /pj_dojangs.json
  def index
    @pj_dojangs = PjDojang.all
  end

  # GET /pj_dojangs/1
  # GET /pj_dojangs/1.json
  def show
  end

  # GET /pj_dojangs/new
  def new
    @pj_dojang = PjDojang.new
  end

  # GET /pj_dojangs/1/edit
  def edit
  end

  # POST /pj_dojangs
  # POST /pj_dojangs.json
  def create
    @pj_dojang = PjDojang.new(pj_dojang_params)

    respond_to do |format|
      if @pj_dojang.save
        format.html { redirect_to @pj_dojang, notice: 'Pj dojang was successfully created.' }
        format.json { render :show, status: :created, location: @pj_dojang }
      else
        format.html { render :new }
        format.json { render json: @pj_dojang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pj_dojangs/1
  # PATCH/PUT /pj_dojangs/1.json
  def update
    respond_to do |format|
      if @pj_dojang.update(pj_dojang_params)
        format.html { redirect_to @pj_dojang, notice: 'Pj dojang was successfully updated.' }
        format.json { render :show, status: :ok, location: @pj_dojang }
      else
        format.html { render :edit }
        format.json { render json: @pj_dojang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pj_dojangs/1
  # DELETE /pj_dojangs/1.json
  def destroy
    @pj_dojang.destroy
    respond_to do |format|
      format.html { redirect_to pj_dojangs_url, notice: 'Pj dojang was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pj_dojang
      @pj_dojang = PjDojang.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pj_dojang_params
      params.require(:pj_dojang).permit(:dojang_id, :akun_id)
    end
end
