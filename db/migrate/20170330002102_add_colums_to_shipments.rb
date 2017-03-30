class AddColumsToShipments < ActiveRecord::Migration[5.0]
  def change
    add_column :shipments, :name, :string
    add_column :shipments, :status, :string
    add_column :shipments, :date_departure, :date
    add_column :shipments, :date_arrival, :date

  end
end
