Rails.application.routes.draw do
  get 'users/index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root to: 'teams#index'
  resources :teams do
    resources :askings do
      collection do
        get 'choose'
        get 'search'
      end
    end
  end
  resources :users, only: [:index, :show, :destroy]
  resources :manuals do
    resources :comments, only: [:create, :edit, :update, :destroy]
    collection do
      get 'search'
      get 'each'
    end
  end
  resources :mails
end
