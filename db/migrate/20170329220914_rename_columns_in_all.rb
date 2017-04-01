class RenameColumnsInAll < ActiveRecord::Migration[5.0]
  def change
    rename_column :logistics, :type, :logistics_type
    rename_column :packages, :type, :packages_type
    rename_column :producers, :type, :producers_type
    rename_column :products, :type, :products_type
    rename_column :shipments, :type, :shipments_type

  end
end
