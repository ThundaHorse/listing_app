class RemoveItemIdFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :item_id, :integer
  end
end
