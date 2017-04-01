class AddUserToTransport < ActiveRecord::Migration[5.0]
  def change
    add_reference :transports, :user

  end
end
