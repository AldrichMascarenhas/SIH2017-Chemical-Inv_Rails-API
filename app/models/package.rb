class Package < ApplicationRecord
  belongs_to :product

  has_one :shipment, optional: true
end
