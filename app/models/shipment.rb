class Shipment < ApplicationRecord
  has_many :packages

  belongs_to :user

  belongs_to :logistics_service, optional: true

  has_many :logistics_service_locations, :through => :logistics_service
end
