Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :users, only: [:show, :edit, :update, :destroy]

  concern :reviews do |options|
    resources :reviews, options
  end


  resources :movies, only: [:index, :show, :create, :delete] do
    concerns :reviews, only: [:create]
    resources :actors, module: :movies
  end
  resources :actors, only: [:index, :show, :delete] do
    concerns :reviews, only: [:create]
  end

  resources :authors, only: [:index, :show] do
   concerns :reviews, only: [:new, :create]
  end

end
