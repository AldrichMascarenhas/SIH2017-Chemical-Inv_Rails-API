class CreateProductTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :product_types do |t|
      t.references :producer, foreign_key: true
      t.string :name
      t.string :type
      t.string :description
      t.timestamps
    end
  end
end
