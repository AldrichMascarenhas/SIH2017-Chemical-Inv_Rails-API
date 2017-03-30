class Warehouse < ApplicationRecord
  belongs_to :user

  has_many :packages
end
