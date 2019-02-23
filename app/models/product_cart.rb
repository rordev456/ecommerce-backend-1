class ProductCart < ApplicationRecord
    belongs_to :cart
    belongs_to :product
    belongs_to :size
end
