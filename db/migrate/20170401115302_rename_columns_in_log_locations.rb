class RenameColumnsInLogLocations < ActiveRecord::Migration[5.0]
  def change
    rename_column :logistics_service_locations, :long, :lng

  end
end
