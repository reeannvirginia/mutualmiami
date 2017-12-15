Rails.application.routes.draw do
  resources :funds
  resources :donations
  resources :organizations
  resources :donors

  root "organizations#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
