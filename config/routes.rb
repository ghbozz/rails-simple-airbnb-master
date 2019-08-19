Rails.application.routes.draw do
  devise_for :users
  root to: 'flats#index'

  get '/profile', to: 'dashboards#profile'

  resources :flats do
    resources :bookings, only: [:new, :create]
  end
end
