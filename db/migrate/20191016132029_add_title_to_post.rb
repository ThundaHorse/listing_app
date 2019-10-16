class AddTitleToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :title, :string
  end
end
