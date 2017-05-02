class AddUserNameToPurchases < ActiveRecord::Migration[5.0]
  def change
    add_column :purchases, :user_name, :string
  end
end
