class SomeRenaming < ActiveRecord::Migration[5.1]
  def change
    rename_column :dishes, :restaurants_id, :restaurant_id
    rename_column :tables, :restaurants_id, :restaurant_id
  end
end
