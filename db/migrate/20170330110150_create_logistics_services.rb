class CreateLogisticsServices < ActiveRecord::Migration[5.0]
  def change
    create_table :logistics_services do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
