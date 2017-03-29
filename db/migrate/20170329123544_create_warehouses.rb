class CreateWarehouses < ActiveRecord::Migration[5.0]
  def change
    create_table :warehouses do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
