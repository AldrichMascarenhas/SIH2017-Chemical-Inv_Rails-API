class AddShipmentToPackage < ActiveRecord::Migration[5.0]
  def change
    add_reference :packages, :shipment

  end
end
