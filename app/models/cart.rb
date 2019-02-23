class Cart < ApplicationRecord
    has_many :product_carts
    has_many :products, through: :product_carts
    belongs_to :user

    def total
        # self.products.map{|product| product.price }.reduce(:+)
        self.products.inject(0){|sum, product| sum + product.price}
    end
    

end
