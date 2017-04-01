class CreateWarehouseLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :warehouse_locations do |t|
      t.references :warehouse, foreign_key: true
      t.string :fulladdress
      t.string :state
      t.integer :pincode
      t.timestamps
    end
  end
end
