class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.string :address
      t.string :postal_code
      t.integer :phone
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end
