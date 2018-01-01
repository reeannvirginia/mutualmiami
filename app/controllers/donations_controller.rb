class DonationsController < ApplicationController
  before_action :authenticate_donor_login!
  before_action :set_donation, only: [:show, :edit, :update, :destroy]

  # GET /donations
  # GET /donations.json
  def index
    if current_donor_login
      @donations = current_donor_login.donations
      @donor = current_donor_login
    else
      redirect_to donor_login_session_path, notice: "This isn't you."
    end

    respond_to  do |format|
      format.html
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

  # POST /donations
  # POST /donations.json
  def create
    @donation = Donation.new(donation_params)
    @donation.save!
    # @donation = current_donor_login.donations.create!(amount: @amount, fund: nil)
    customer = StripeTool.create_customer(email: params[:stripeEmail],
      stripe_token: params[:stripeToken])

      charge = StripeTool.create_charge(customer_id: customer.id,
        amount: 500,
        description: "Donation totaling #{@donation.amount}")

        redirect_to donations_path(donation_id: @donation.id)
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path(donation_id: @donation.id)

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

    def amount
      @donation = Donation.find(params[:id])
      @amount = @donation.amount
    end



end
