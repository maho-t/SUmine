Rails.application.routes.draw do
  get 'askings/index'
  get 'manuals/index'
  get 'users/index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root to: 'teams#index'
  resources :teams
  resources :users, only: [:index, :show, :destroy]
  resources :manuals do
    collection do
      get 'search'
    end
  end
  resources :askings, only: [:index]
end
