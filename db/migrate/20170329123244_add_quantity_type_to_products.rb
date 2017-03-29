class AddQuantityTypeToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :quantity_type, :string
  end
end
