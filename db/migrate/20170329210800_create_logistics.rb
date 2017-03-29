class CreateLogistics < ActiveRecord::Migration[5.0]
  def change
    create_table :logistics do |t|
      t.references :user, foreign_key: true
      t.string :type
      t.string :name
      t.timestamps
    end
  end
end
