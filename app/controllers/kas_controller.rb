class KasController < ApplicationController
  before_action :set_ka, only: [:show, :edit, :update, :destroy]

  # GET /kas
  # GET /kas.json
  def index
    # @ka = Ka.new
    @kas = Ka.all
    @kas_umum = Ka.pluck(:saldo).last
    @kas_sma = KasSma.pluck(:saldo).last
    @kas_smp = KasSmp.pluck(:saldo).last
    @kas_club = KasClub.pluck(:saldo).last
    if @kas_umum == nil
      @total_kas = @kas_sma + @kas_smp + @kas_club
    elsif @kas_club == nil
      @total_kas = @kas_umum + @kas_sma + @kas_smp
    elsif  @kas_sma == nil
      @total_kas = @kas_umum + @kas_smp + @kas_club
    elsif @kas_smp == nil
      @total_kas = @kas_umum + @kas_sma + @kas_club       
    else
      @total_kas = @kas_umum + @kas_sma + @kas_smp + @kas_club
    end
    
  end

  # GET /kas/1
  # GET /kas/1.json
  def show
  end

  # GET /kas/new
  def new
    @ka = Ka.new
  end

  # GET /kas/1/edit
  def edit
  end

  # POST /kas
  # POST /kas.json
  def create
    @ka = Ka.new(ka_params)
    @ka.akun_id = session[:akun_id]
    saldo = Ka.pluck(:saldo).last
    if saldo == nil
      @ka.saldo = @ka.debit
    else
      @ka.saldo = (saldo + @ka.debit) - @ka.kredit
    end
    respond_to do |format|
      if @ka.save
        format.html { redirect_to @ka, notice: 'Ka was successfully created.' }
        format.json { render :show, status: :created, location: @ka }
      else
        format.html { render :new }
        format.json { render json: @ka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kas/1
  # PATCH/PUT /kas/1.json
  def update
    respond_to do |format|
      if @ka.update(ka_params)
        format.html { redirect_to @ka, notice: 'Ka was successfully updated.' }
        format.json { render :show, status: :ok, location: @ka }
      else
        format.html { render :edit }
        format.json { render json: @ka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kas/1
  # DELETE /kas/1.json
  def destroy
    @ka.destroy
    respond_to do |format|
      format.html { redirect_to kas_url, notice: 'Ka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ka
      @ka = Ka.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ka_params
      params.require(:ka).permit(:keterangan, :debit, :kredit, :saldo, :akun_id)
    end
end
