# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :client_accounts, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'client_accounts/sessions',
    registrations: 'client_accounts/registrations'
  }

  post 'api/v1/auth/login', to: 'authentication#login'
  namespace :api do
    namespace :v1 do
      resources :client_account, only: [:index, :show]
       resources :appointment, only: [:index, :show]
    end
  end  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
