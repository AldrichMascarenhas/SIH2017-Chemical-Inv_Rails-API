class PackageSerializer < ActiveModel::Serializer
  attributes :id, :packages_type, :quantity_type, :quantity, :shipment_id, :warehouse_id
  belongs_to :product

  belongs_to :shipment, if: :conditionS?

  belongs_to :warehouse, if: :conditionW?

  def conditionS?
    true if :shipment_id != 0
  end


  def conditionW?
    true if :shipment_id != nil
  end



end
