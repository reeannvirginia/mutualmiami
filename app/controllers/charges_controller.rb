class ChargesController < ApplicationController
  before_action :set_donation
  before_action :amount_to_be_charged
  before_action :set_description
  before_action :authenticate_donor_login!


  def new
  end

  def create
      customer = StripeTool.create_customer(email: params[:stripeEmail],
                                            stripe_token: params[:stripeToken])

      charge = StripeTool.create_charge(customer_id: customer.id,
                                        amount: (@amount.to_i * 100),
                                        description: @description)

      redirect_to thanks_path(donation_id: @donation.id)
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path(donation_id: @donation.id)
    end

  def thanks
 end

  private

    def amount_to_be_charged
      @amount = @donation.amount
    end

    def set_donation
      @donation = current_donor_login.donations.find(params[:donation_id])
    end

    def set_description
      @description = "Some amazing product"
    end

end
