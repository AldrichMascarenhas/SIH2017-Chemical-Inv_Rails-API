class CreateShipments < ActiveRecord::Migration[5.0]
  def change
    create_table :shipments do |t|
      t.references :logistic, foreign_key: true
      t.string :type
      t.timestamps
    end
  end
end
