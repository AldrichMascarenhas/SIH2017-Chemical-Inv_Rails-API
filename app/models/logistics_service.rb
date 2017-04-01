class LogisticsService < ApplicationRecord

  has_one :shipment #TODO: make many

  belongs_to :transport
  has_many :logistics_service_locations
end
