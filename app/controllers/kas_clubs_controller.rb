class KasClubsController < ApplicationController
  before_action :set_kas_club, only: [:show, :edit, :update, :destroy]

  # GET /kas_clubs
  # GET /kas_clubs.json
  def index
    @kas_clubs = KasClub.all
  end

  # GET /kas_clubs/1
  # GET /kas_clubs/1.json
  def show
  end

  # GET /kas_clubs/new
  def new
    @kas_club = KasClub.new
  end

  # GET /kas_clubs/1/edit
  def edit
  end

  # POST /kas_clubs
  # POST /kas_clubs.json
  def create
    @kas_club = KasClub.new(kas_club_params)
    @kas_club.akun_id = session[:akun_id]
    saldo = KasClub.pluck(:saldo).last
    if saldo == nil
      @kas_club.saldo = @kas_club.debit
    else
      @kas_club.saldo = (saldo + @kas_club.debit) - @kas_club.kredit
    end
    respond_to do |format|
      if @kas_club.save
        format.html { redirect_to @kas_club, notice: 'Kas club was successfully created.' }
        format.json { render :show, status: :created, location: @kas_club }
      else
        format.html { render :new }
        format.json { render json: @kas_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kas_clubs/1
  # PATCH/PUT /kas_clubs/1.json
  def update
    respond_to do |format|
      if @kas_club.update(kas_club_params)
        format.html { redirect_to @kas_club, notice: 'Kas club was successfully updated.' }
        format.json { render :show, status: :ok, location: @kas_club }
      else
        format.html { render :edit }
        format.json { render json: @kas_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kas_clubs/1
  # DELETE /kas_clubs/1.json
  def destroy
    @kas_club.destroy
    respond_to do |format|
      format.html { redirect_to kas_clubs_url, notice: 'Kas club was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kas_club
      @kas_club = KasClub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kas_club_params
      params.require(:kas_club).permit(:keterangan, :debit, :kredit, :saldo, :id_bendahara)
    end
end
