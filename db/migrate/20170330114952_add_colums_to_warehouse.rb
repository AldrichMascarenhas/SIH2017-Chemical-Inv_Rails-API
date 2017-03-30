class AddColumsToWarehouse < ActiveRecord::Migration[5.0]
  def change
    add_column :warehouses, :name, :string
    add_column :warehouses, :warehouses_type, :string


  end
end
