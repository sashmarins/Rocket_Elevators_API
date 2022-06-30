Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get "residential", to: "pages#residential"
  get "commercial", to: "pages#commercial"
  get "quote", to: "pages#quote"
  get "index", to: "pages#index"
  get "login", to: "pages#login"
  namespace :admin do
    resources :your_routes
 end
