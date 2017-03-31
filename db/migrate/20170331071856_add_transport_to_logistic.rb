class AddTransportToLogistic < ActiveRecord::Migration[5.0]
  def change
    add_reference :logistics_services, :transport

  end
end
