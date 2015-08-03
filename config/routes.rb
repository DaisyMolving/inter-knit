Rails.application.routes.draw do

  root to: 'users#index'
  post '/user_projects', to: 'user_projects#create'
  devise_for :users
  resources :projects
  
  resources :stages
  resources :instructions

  get '/users/:id', to: 'users#show', as: 'user'

end


