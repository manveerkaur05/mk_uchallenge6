Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'customers#index'
  get '/customers/alphabetized', to: 'customers#alphabetized', as: 'alphabetized_customers'
 get '/customers/missing_email', to: 'customers#missing_email', as: 'missing_email_customers'

 resources :customers

end