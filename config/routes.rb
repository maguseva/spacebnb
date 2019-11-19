Rails.application.routes.draw do
  devise_for :users
  get 'success', to: 'pages#success'

  resources :planets, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy]
  root to: 'planets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
