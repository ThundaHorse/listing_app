class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :listing_id
      t.text :description
      t.string :name
      t.decimal :price, precision: 11, scale: 2

      t.timestamps
    end
  end
end
