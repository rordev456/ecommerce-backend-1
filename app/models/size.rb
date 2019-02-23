class Size < ApplicationRecord
    has_many :inventories
    has_many :products, through: :inventories
    has_many :product_carts
end
