Rails.application.routes.draw do
  resources :invoices
  root to: 'projects#index'
  
  resources :projects
  resources :clients
end
