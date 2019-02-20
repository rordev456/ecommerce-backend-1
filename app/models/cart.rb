class Cart < ApplicationRecord
    has_many :product_carts
    has_many products, through: :product_cart
    belongs_to :user
end
