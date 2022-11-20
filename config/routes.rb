Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :relationships, only: [:create, :destroy]

  resources :users
  root 'users#index'
end
