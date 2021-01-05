Rails.application.routes.draw do
  get 'home/dashboard'
  root to: 'home#dashboard'

  resources :invoices
  resources :projects
  resources :clients
end
