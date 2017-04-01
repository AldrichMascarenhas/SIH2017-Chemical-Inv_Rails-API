class TransportSerializer < ActiveModel::Serializer
  attributes :id, :name, :uid, :transport_type
  belongs_to :user

  has_many :logistics_services

end
