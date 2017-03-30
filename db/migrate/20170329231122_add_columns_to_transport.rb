class AddColumnsToTransport < ActiveRecord::Migration[5.0]
  def change
    add_column :transports, :name, :string
    add_column :transports, :uid, :string

  end
end