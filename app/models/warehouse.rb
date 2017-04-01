class Warehouse < ApplicationRecord
  belongs_to :user

  has_many :packages

  has_one :warehouse_location
end
