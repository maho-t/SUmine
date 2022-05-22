Rails.application.routes.draw do
  get 'teams/index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root to: "teams#index"
  resources :teams, only: [:index, :new, :create]
  resources :users, only: :index
end
