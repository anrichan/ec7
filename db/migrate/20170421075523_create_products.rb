class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.text :description
      t.string :select_item
      t.integer :admin_id
      t.integer :categori_id

      t.timestamps
    end
  end
end
