class AddLogisticsServiceToShipments < ActiveRecord::Migration[5.0]
  def change
    add_reference :shipments, :logistics_service

  end
end
