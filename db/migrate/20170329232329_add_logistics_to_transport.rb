class AddLogisticsToTransport < ActiveRecord::Migration[5.0]
  def change
    add_reference :shipments, :logistic
  end
end
