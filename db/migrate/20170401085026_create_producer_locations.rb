class CreateProducerLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :producer_locations do |t|
      t.references :producer, foreign_key: true
      t.string :fulladdress
      t.string :state
      t.integer :pincode
      t.timestamps
    end
  end
end
