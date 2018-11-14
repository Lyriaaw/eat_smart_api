class RenameTablesInOrder < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :tables_id, :table_id
  end
end
