class LogisticsServiceLocationSerializer < ActiveModel::Serializer
  attributes :id, :lat, :long
  has_one :logistics_service
end
