Rails.application.routes.draw do

  root to: 'pages#index'


  resources :prices
  resources :reconciliations
  resources :credit_notes
  resources :receipts
  resources :payments
  resources :vehicles
  resources :washes
  resources :vehicle_sizes
  resources :wash_types
  resources :places

  devise_for :users, controllers: {
          registrations: 'users/registrations'
        }

  devise_for :washers, controllers: {
          registrations: 'washers/registrations'
        }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
