class PackageSerializer < ActiveModel::Serializer
  attributes :id, :packages_type, :shipment_id
  belongs_to :product

  belongs_to :shipment, if: :condition?


  def condition?
    true if :shipment_id != 0
  end


end
