Rails.application.routes.draw do

  get 'items/create'

  devise_for :users

  resources :users do
    resources :items, only: [:create]
  end

  root 'users#show'

end
