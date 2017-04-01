class Product < ApplicationRecord

  belongs_to :producer
  has_many :packages
end
