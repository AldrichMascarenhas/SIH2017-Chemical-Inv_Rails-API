class WarehouseLocationSerializer < ActiveModel::Serializer
  attributes :id ,:fulladdress ,:state ,:pincode
  has_one :warehouse
end
