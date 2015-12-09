Rails.application.routes.draw do

  resources :users, only: [] do
    resources :items, only: [:create, :destroy]
  end

  devise_for :users

  root 'users#show'

end