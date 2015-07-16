Rails.application.routes.draw do

  root to: 'users#index'
  devise_for :users
  resources :projects
  
  resources :stages
  resources :instructions

  get '/users/:id', to: 'users#show', as: 'user'

end


