class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
    devise_parameter_sanitizer.permit(:account_update)
  end

  #Commented this below out and used protect_from_forgery prepend: true, per Devise gem and Rails 5+ version.
  # protect_from_forgery with: :exception

end
