class ShipmentSerializer < ActiveModel::Serializer
  attributes :id,:shipments_type, :name, :status ,:date_departure, :date_arrival, :logistics_service_id

  has_many :packages

  belongs_to :user

  belongs_to :logistics_service, if: :conditionS?

  def conditionS?
    true if :logistics_service_id != nil
  end



end
