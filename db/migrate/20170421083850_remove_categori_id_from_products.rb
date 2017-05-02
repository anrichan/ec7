class RemoveCategoriIdFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :categori_id, :integer
  end
end
