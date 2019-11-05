class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer "user_id"
      t.decimal "subtotal", precision: 11, scale: 2
      t.decimal "tax", precision: 11, scale: 2
      t.decimal "total", precision: 11, scale: 2
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.timestamps
    end
  end
end
