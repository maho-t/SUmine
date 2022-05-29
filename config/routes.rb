Rails.application.routes.draw do
  get 'manuals/index'
  get 'users/index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root to: 'teams#index'
  resources :teams
  resources :users, only: [:index, :show, :destroy]
  resources :manuals, only: [:index, :new, :create]
end
