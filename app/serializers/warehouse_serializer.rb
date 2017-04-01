class WarehouseSerializer < ActiveModel::Serializer
  attributes :id, :name, :warehouses_type
  has_one :user

  has_many :packages

  has_one :warehouse_location

end
