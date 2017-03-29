class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.references :product, foreign_key: true
      t.string :type
      t.timestamps
    end
  end
end
