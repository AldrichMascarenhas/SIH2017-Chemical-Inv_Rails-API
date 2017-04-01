class LogisticsServiceLocationSerializer < ActiveModel::Serializer
  attributes :id, :lat, :lng
  has_one :logistics_service
end
