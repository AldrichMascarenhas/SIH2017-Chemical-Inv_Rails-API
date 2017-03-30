class PackageSerializer < ActiveModel::Serializer
  attributes :id, :packages_type
  belongs_to :product

  has_one :shipment

end
