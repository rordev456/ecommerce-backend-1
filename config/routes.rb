Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      # resources :sizes
      # resources :inventories
      resources :categories, only: [:index]
      resources :products, only: [:index]
      # resources :product_carts
      resources :carts, only: [:index, :create]
      resources :users, only: [:index]
      post '/login', to: 'users#login'
      post '/signup', to: 'users#create'
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
