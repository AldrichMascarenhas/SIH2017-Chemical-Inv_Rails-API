class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :product_type, foreign_key: true
      t.string :name
      t.string :type
      t.string :description
      t.string :cas_number

      t.float :quantity
      t.timestamps
    end
  end
end
