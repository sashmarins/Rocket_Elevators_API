RailsAdmin::Engine.routes.draw do
  scope protocol: 'https://', constraints: {protocol: 'https://'} do
    resources :radmin
  end

  get "polly", to: "rails_admin.polly_path"
end

Rails.application.routes.draw do
  # get 'errors/not_found'
  # get 'errors/internal_server_error~'
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  #  :controllers => { :sessions => 'sessions' }
  scope '/employee' do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get "residential", to: "pages#residential"
  get "commercial", to: "pages#commercial"
  get "quote", to: "quotes#new"
  get "index", to: "pages#index"
  post "lead", to: "lead#create"
  get "login", to: "pages#login"
  get 'users/:id' => 'users#show'
  # patch 'elevators/:status', to: "elevator#update"
 # get "portfolio", to: "pages#portfolio"
  resources :quotes

  # get "polly", to: "rails_admin/main#amazon"

  # resources :polly
  # get "amazon", to: "rails_admin/main#amazon"
  
 end