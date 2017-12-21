class DonationsController < ApplicationController
  before_action :authenticate_donor_login!
  before_action :set_donation, only: [:show, :edit, :update, :destroy]

  # GET /donations
  # GET /donations.json
  def index
    if current_donor_login
      @donations = current_donor_login.donations
    else
      redirect_to donor_login_session_path, notice: "Yo. This isn't you."
    end
  end

  # GET /donations/1
  # GET /donations/1.json
  def show
  end

  # GET /donations/new
  def new
    get_funds
    @donation = Donation.new(fund_id: params[:fund_id], donor_login_id: params[:donor_login_id])
  end

  # GET /donations/1/edit
  def edit
    get_funds
  end

  def get_access_token
    current_donor_login.plaid_public_token = params[:public_token]
    current_donor_login.plaid_access_token = PLAID_CLIENT.item.public_token.exchange(params[:public_token])
    current_donor_login.save
    respond_to do |format|
      format.json { render json: {is_success: true}}
    end
  end

  # POST /donations
  # POST /donations.json
  def create
    @donation = Donation.new(donation_params)
    get_funds
    @donation.save
    redirect_to @donation
  end

  # PATCH/PUT /donations/1
  # PATCH/PUT /donations/1.json
  def update
    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to @donation, notice: 'Donation was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation }
      else
        format.html { render :edit }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donations/1
  # DELETE /donations/1.json
  def destroy
    @donation.destroy
    respond_to do |format|
      format.html { redirect_to donations_url, notice: 'Donation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_params
      params.require(:donation).permit(:amount, :donor_login_id, :fund_id)
    end

    def get_funds
      @funds = Fund.all
    end
end
