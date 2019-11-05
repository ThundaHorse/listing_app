class CartedProductInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :carted_products, :user_id, :integer
    add_column :carted_products, :item_id, :integer
    add_column :carted_products, :quantity, :integer
    add_column :carted_products, :status, :integer
    add_column :carted_products, :order_id, :integer
  end
end
