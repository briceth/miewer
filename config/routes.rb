Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # root to: 'movies#index'

  resources :users, only: [:show, :edit, :update, :destroy]

  resources :movies

  resources :actors

  resources :authors

end
