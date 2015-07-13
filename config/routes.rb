Rails.application.routes.draw do

  root to: 'users#index'
  devise_for :users
  resources :projects
  
  resources :stages
  resources :instructions

end


