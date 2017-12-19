class SubscribersController < ApplicationController

  before_filter :authenticate_user!
  def
    new
  end

  def update

    token =[:stripeToken]

    customer = Stripe::Customer.create(
      card: token,
      plan: 011198,
      email: current_user.emil
    )

      current_user.subscribe = true
      current_user.stripeid = customerid

      redirect_to projects_path
      
    end
end
