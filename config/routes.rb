# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root 'client_account#index'
  post 'api/v1/auth/login', to: 'authentication#login'
  namespace :api do
    namespace :v1 do
      resources :clients, only: [:index]
    end
  end  
end
