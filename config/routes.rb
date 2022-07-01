Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  scope '/employee' do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get "residential", to: "pages#residential"
  get "commercial", to: "pages#commercial"
  get "quote", to: "pages#quote"
  get "index", to: "pages#index"

  get "login", to: "pages#login"
  get 'users/:id' => 'users#show'
  resources :quotes
  
 end
