Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :secrets, only: [:index, :create, :destroy]
  resources :likes, only: [:create, :destroy]
end