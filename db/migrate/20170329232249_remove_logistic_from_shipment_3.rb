class RemoveLogisticFromShipment3 < ActiveRecord::Migration[5.0]
  def change
    remove_column :transports, :logistics_id
    remove_column :transports, :logistic_id_id
  end
end
