Rails.application.routes.draw do
  resources :line_items
  resources :stores
  resources :products
  resources :locations
  resources :categories
  resources :types
  resources :brands
  resources :customers
  resources :orders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products, only: [:index]
  root 'pages#home'
  get 'stores', to: 'stores#new'
end
