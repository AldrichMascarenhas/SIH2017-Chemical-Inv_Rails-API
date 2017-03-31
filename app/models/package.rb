class Package < ApplicationRecord
  belongs_to :product

  has_one :shipment

  belongs_to :shipment, optional: true
  belongs_to :warehouse, optional: true


end
