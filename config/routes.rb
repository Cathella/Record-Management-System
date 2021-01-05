Rails.application.routes.draw do
  resources :admins
  get 'home/dashboard'
  root to: 'home#dashboard'

  resources :invoices
  resources :projects
  resources :clients
end
