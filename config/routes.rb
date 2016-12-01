Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # root to: 'movies#index'

  resources :users, only: [:show, :edit, :update, :destroy]

  resources :movies do
    resources :reviews, only: [:new, :create]
  end

  resources :actors do
    resources :reviews, only: [:new, :create]
  end

  resources :authors

end
