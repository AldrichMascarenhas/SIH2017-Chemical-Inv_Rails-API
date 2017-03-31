class LogisticsServiceSerializer < ActiveModel::Serializer
  attributes :id , :name, :description
  belongs_to :logistic

  has_one :shipment #TODO: make many


  belongs_to :transport

  has_many :logistics_service_locations

end
