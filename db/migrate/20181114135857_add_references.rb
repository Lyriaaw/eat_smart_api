class AddReferences < ActiveRecord::Migration[5.1]
  def change

    add_reference :tables, :restaurants, index: true
    add_reference :dishes, :restaurants, index: true

    add_reference :orders, :tables, index: true
    create_join_table :orders, :dishes

  end
end
