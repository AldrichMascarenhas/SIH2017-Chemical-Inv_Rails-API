class AddLogisticsToTransport2 < ActiveRecord::Migration[5.0]
  def change
    add_reference :transports, :logistic

  end
end
