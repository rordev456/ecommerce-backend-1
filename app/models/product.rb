class Product < ApplicationRecord
    has_many :carts, through: product_cart
    has_many :inventories
    has_many :sizes, through: :inventory
    belongs_to :category
end
