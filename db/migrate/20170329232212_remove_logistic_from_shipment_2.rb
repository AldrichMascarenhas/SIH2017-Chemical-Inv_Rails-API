class RemoveLogisticFromShipment2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :transports, :logistic_id
    remove_column :shipments, :logistic_id
  end
end
