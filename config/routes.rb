Rails.application.routes.draw do
  resources :charges, only: [:new, :create]
  devise_for :donor_logins
  # devise_for :donors
  resources :posts
  resources :funds
  resources :donations
  resources :organizations
  resources :donors

 root to: 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
