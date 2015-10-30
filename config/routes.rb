Rails.application.routes.draw do
  root "users#index"

  namespace :admin do
    resources :users
  end

  get '/admin/dashboard', to: 'admin/dashboard#index'

  resources :users, only: [:new, :create, :edit, :update]

  get '/profile', to: 'users#show'

  resources :trips, only: [:index, :show]


end
