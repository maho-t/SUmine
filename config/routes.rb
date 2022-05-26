Rails.application.routes.draw do
  get 'users/index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  devise_scope :user do
    get 'users', to: 'users/registrations#new_user'
  end
  root to: 'teams#index'
  resources :teams
  resources :users, only: [:index, :show, :destroy]
end
