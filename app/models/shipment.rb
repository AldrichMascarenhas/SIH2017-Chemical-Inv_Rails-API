class Shipment < ApplicationRecord
  has_many :packages
end
