Rails.application.routes.draw do
  resources :books
  devise_for :users
  resources :authors
  root 'home#index'
  get 'home/about'
end
