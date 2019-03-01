class CartSerializer < ActiveModel::Serializer
  attributes :id, :checkout, :total, :products
  has_many :products
end
