Rails.application.routes.draw do
  get 'planets/index'
  get 'planets/show'
  devise_for :users
  root to: 'pages#home'
  resources :planets, only: [:index, :show] do
    resources :bookings, only: [:new, :create, :delete]
      resources :reviews, only: [ :create]

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
