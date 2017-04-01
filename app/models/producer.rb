class Producer < ApplicationRecord
  belongs_to :user

  has_many :product_types

  has_one :producer_location
end
