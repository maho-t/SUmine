Rails.application.routes.draw do
  get 'users/index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root to: 'teams#index'
  resources :teams
  resources :users, only: [:index, :show, :destroy]
end
