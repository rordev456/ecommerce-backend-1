class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.integer :amount
      t.integer :product_id
      t.integer :size_id

      t.timestamps
    end
  end
end
