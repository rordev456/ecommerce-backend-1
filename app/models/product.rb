class Product < ApplicationRecord
    has_many :product_carts
    has_many :carts, through: :product_carts
    has_many :inventories
    has_many :sizes, through: :inventories
    belongs_to :category
end
