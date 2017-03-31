class AddColumsToPackage < ActiveRecord::Migration[5.0]
  def change
    add_column :packages, :quantity, :string
    add_column :packages, :quantity_type, :string

  end
end
