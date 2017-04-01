class Producer < ApplicationRecord
  belongs_to :user
  has_one :producer_location

  has_many :products
end
