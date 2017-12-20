Rails.application.routes.draw do
  resources :charges, only: [:new, :create]
  devise_for :donor_logins
  # devise_for :donors
<<<<<<< HEAD
=======

>>>>>>> 9dd637bc96f9e8f2acbe6ec5e892b5c2c339eff1
  resources :funds
  resources :donations
  resources :organizations
  resources :donors


get 'thanks', to: 'charges#thanks', as: 'thanks'

 root to: 'funds#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
