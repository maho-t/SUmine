Rails.application.routes.draw do
  get 'teams/index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root to: "teams#index"
end
