class KasSmpsController < ApplicationController
  before_action :set_kas_smp, only: [:show, :edit, :update, :destroy]

  # GET /kas_smps
  # GET /kas_smps.json
  def index
    @kas_smps = KasSmp.all
  end

  # GET /kas_smps/1
  # GET /kas_smps/1.json
  def show
  end

  # GET /kas_smps/new
  def new
    @kas_smp = KasSmp.new
  end

  # GET /kas_smps/1/edit
  def edit
  end

  # POST /kas_smps
  # POST /kas_smps.json
  def create
    @kas_smp = KasSmp.new(kas_smp_params)
    @kas_smp.akun_id = session[:akun_id]
    saldo = KasSmp.pluck(:saldo).last
    if saldo == nil
      @kas_smp.saldo = @kas_smp.debit
    else
      @kas_smp.saldo = (saldo + @kas_smp.debit) - @kas_smp.kredit
    end
    
    respond_to do |format|
      if @kas_smp.save
        format.html { redirect_to @kas_smp, notice: 'Kas smp was successfully created.' }
        format.json { render :show, status: :created, location: @kas_smp }
      else
        format.html { render :new }
        format.json { render json: @kas_smp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kas_smps/1
  # PATCH/PUT /kas_smps/1.json
  def update
    respond_to do |format|
      if @kas_smp.update(kas_smp_params)
        format.html { redirect_to @kas_smp, notice: 'Kas smp was successfully updated.' }
        format.json { render :show, status: :ok, location: @kas_smp }
      else
        format.html { render :edit }
        format.json { render json: @kas_smp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kas_smps/1
  # DELETE /kas_smps/1.json
  def destroy
    @kas_smp.destroy
    respond_to do |format|
      format.html { redirect_to kas_smps_url, notice: 'Kas smp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kas_smp
      @kas_smp = KasSmp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kas_smp_params
      params.require(:kas_smp).permit(:keterangan, :debit, :kredit, :saldo, :id_bendahara)
    end
end
