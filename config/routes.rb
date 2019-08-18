Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#index'

  resources :attractions
  # resources :sessions
  resources :users

  # get '/signin', to: 'application#signin', as: 'signin'
  get '/signin', to: 'sessions#signin', as: 'signin'
  # post   '/login',   to: 'sessions#create'
  post '/signin', to: 'sessions#create', as: 'create'
  delete '/signout', to: 'sessions#destroy', as: 'destroy'
end
