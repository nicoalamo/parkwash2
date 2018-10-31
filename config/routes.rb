Rails.application.routes.draw do

  get 'users/show'
  get 'washers/show'
  root to: 'pages#index'

  get 'pages/index_washers'


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

  resources :washers, only: [:index, :show]
  resources :users, only: [:index, :show]

end
