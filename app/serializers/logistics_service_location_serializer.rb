class LogisticsServiceLocationSerializer < ActiveModel::Serializer
  attributes :id
  has_one :logistics_service
end
