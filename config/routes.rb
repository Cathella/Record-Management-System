Rails.application.routes.draw do
  get 'admin_sessions/new'
  resources :admins
  resources :admin_sessions
  
  get 'home/dashboard'
  root to: 'home#index'

  resources :invoices
  resources :projects
  resources :clients
end
