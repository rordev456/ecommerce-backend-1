class AddCheckoutToCarts < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :checkout, :boolean, :default => false
  end
end
