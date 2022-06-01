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
      end
    end
  end
  resources :users, only: [:index, :show, :destroy]
  resources :manuals do
    collection do
      get 'search'
    end
  end
end
