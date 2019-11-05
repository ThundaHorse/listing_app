class CreateCartedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :carted_products do |t|

      t.timestamps
    end
  end
end
