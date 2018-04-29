Rails.application.routes.draw do
  root "users#new"
  resources :users, only: [:new]
  resources :messages, only: [:index, :create]

  post "login" => "users#login"
  delete "logout" => "users#logout"
end
