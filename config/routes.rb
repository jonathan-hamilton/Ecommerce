Rails.application.routes.draw do
  resources :customers
  resources :line_items
  resources :orders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products, only: [:index]
end
