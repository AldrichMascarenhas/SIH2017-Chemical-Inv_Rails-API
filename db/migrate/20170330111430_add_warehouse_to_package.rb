class AddWarehouseToPackage < ActiveRecord::Migration[5.0]
  def change
    add_reference :packages, :warehouse

  end
end
