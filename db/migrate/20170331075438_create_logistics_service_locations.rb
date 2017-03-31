class CreateLogisticsServiceLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :logistics_service_locations do |t|
      t.references :logistics_service, foreign_key: true
      t.float :lat
      t.float :long
      t.timestamps
    end
  end
end
