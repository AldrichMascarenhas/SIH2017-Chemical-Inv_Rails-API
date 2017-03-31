class AddUsersReferenceToShipments < ActiveRecord::Migration[5.0]
  def change
    add_reference :shipments, :user

  end
end
