Rails.application.routes.draw do

  #get 'items/create'


  resources :users do
    resources :items #, only: [:create, :delete]
  end

  devise_for :users

  root 'users#show'

end
