Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
  # resources :sizes
  # resources :inventories
  resources :categories, only: [:index]
  # resources :products
  # resources :product_carts
  # resources :carts
  resources :users, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
