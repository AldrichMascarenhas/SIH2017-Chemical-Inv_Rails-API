class AddTransportTypeToTransport < ActiveRecord::Migration[5.0]
  def change
    add_column :transports, :transport_type, :string

  end
end
