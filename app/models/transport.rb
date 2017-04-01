class Transport < ApplicationRecord
  belongs_to :user

  has_many :logistics_services
end
