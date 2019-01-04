class KasSmasController < ApplicationController
  before_action :set_kas_sma, only: [:show, :edit, :update, :destroy]

  # GET /kas_smas
  # GET /kas_smas.json
  def index
    @kas_smas = KasSma.all
  end

  # GET /kas_smas/1
  # GET /kas_smas/1.json
  def show
  end

  # GET /kas_smas/new
  def new
    @kas_sma = KasSma.new
  end

  # GET /kas_smas/1/edit
  def edit
  end

  # POST /kas_smas
  # POST /kas_smas.json
  def create
    @kas_sma = KasSma.new(kas_sma_params)
    @kas_sma.akun_id = session[:akun_id]
    saldo = KasSma.pluck(:saldo).last
    if saldo == nil
      @kas_sma.saldo = @kas_sma.debit
    else
      @kas_sma.saldo = (saldo + @kas_sma.debit) - @kas_sma.kredit
    end
    respond_to do |format|
      if @kas_sma.save
        format.html { redirect_to @kas_sma, notice: 'Kas sma was successfully created.' }
        format.json { render :show, status: :created, location: @kas_sma }
      else
        format.html { render :new }
        format.json { render json: @kas_sma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kas_smas/1
  # PATCH/PUT /kas_smas/1.json
  def update
    respond_to do |format|
      if @kas_sma.update(kas_sma_params)
        format.html { redirect_to @kas_sma, notice: 'Kas sma was successfully updated.' }
        format.json { render :show, status: :ok, location: @kas_sma }
      else
        format.html { render :edit }
        format.json { render json: @kas_sma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kas_smas/1
  # DELETE /kas_smas/1.json
  def destroy
    @kas_sma.destroy
    respond_to do |format|
      format.html { redirect_to kas_smas_url, notice: 'Kas sma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kas_sma
      @kas_sma = KasSma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kas_sma_params
      params.require(:kas_sma).permit(:keterangan, :debit, :kredit, :id_bendahara)
    end
end
