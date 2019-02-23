class CreateProductCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :product_carts do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :size_id

      t.timestamps
    end
  end
end
