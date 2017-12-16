class ApplicationController < ActionController::Base

  protect_from_forgery prepend: true

  #Commented this below out and used protect_from_forgery prepend: true, per Devise gem and Rails 5+ version. 
  # protect_from_forgery with: :exception 

end
