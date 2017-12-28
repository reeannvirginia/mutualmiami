class DonorLoginsController < Devise::RegistrationsController
  def create
    super
  end

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.
end
