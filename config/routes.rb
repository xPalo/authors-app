Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { sessions: "devise/sessions" }
  resources :users, :except => [:edit, :update, :destroy]
  resources :authors
  resources :books
  root "home#index"
  get "home/about"
end
