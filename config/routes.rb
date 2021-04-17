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
  get 'admin', to: 'admin#show'
  get 'signup', to: 'customers#new'
  get 'order', to: 'orders#show'
  # get 'order' to:'orders#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'customer', to: 'customers#show'
end
