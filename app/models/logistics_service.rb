class LogisticsService < ApplicationRecord
  belongs_to :logistic

  has_one :shipment #TODO: make many

  belongs_to :transport
end
