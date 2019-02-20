Rails.application.routes.draw do
  resources :sizes
  resources :inventories
  resources :categories
  resources :products
  resources :product_carts
  resources :carts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
