class ShipmentSerializer < ActiveModel::Serializer
  attributes :id,:shipments_type, :name, :status ,:date_departure, :date_arrival

  has_many :packages



end
