Rails.application.routes.draw do

  devise_for :users

  resources :planets, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy]

  get 'bookings/:id/success', to: 'bookings#success', as: :successfull_booking

  root to: 'planets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
