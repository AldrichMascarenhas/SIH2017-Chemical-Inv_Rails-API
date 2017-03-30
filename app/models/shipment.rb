class Shipment < ApplicationRecord
  belongs_to :logistic

  has_many :packages
end
