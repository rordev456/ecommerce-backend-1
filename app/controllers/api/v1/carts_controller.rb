class Api::V1::CartsController < ApplicationController
    def index
        @carts = Cart.all
        render json: @carts
    end

    def create
        @cart = Cart.new(user: current_user)
        if @cart.save    
            params["cartItems"].each do |elem|
                elem["quantity"].times do
                    ProductCart.create(cart: @cart, product_id: elem["id"], size: Size.all.sample)
                    # @cart.product_ids << elem["id"]
                end
            end
            render json: @cart
        end
        # map through the products and then pluck the id
        # Make sure each Product is duplicated accounted for each cart

    end
    
    
    
end
