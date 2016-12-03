Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # root to: 'movies#index'

  resources :users, only: [:show, :edit, :update, :destroy]

  concern :reviews do |options|
    resources :reviews, options
  end


  resources :movies, only: [:index, :show, :create] do
    concerns :reviews, only: [:create]
    resources :actors, module: :movies
  end
  resources :actors, only: [:index, :show] do
    concerns :reviews, only: [:create]
      # post :review, on: :member

      # post '/proposals/search' => 'proposals#search'
      # resources :movies
  end

  resources :authors, only: [:index, :show] do
   concerns :reviews, only: [:new, :create]
  end

end
