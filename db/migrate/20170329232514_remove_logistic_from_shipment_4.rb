class RemoveLogisticFromShipment4 < ActiveRecord::Migration[5.0]
  def change
    remove_column :shipments, :logistic_id

  end
end
