Rails.application.routes.draw do
  root 'welcome#index'

  resources :users do
    resources :sales
  end

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: "logout"


end
