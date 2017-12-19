Rails.application.routes.draw do
  devise_for :donor_logins, controllers: {registration: "registrations"}
  # devise_for :donors
  resources :subscribers
  resources :funds
  resources :donations
  resources :organizations
  resources :donors

  post 'get_access_token', to: "donations#get_access_token"
  root "funds#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
