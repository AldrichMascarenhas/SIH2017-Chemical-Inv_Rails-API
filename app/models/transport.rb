class Transport < ApplicationRecord
  belongs_to :logistic

  has_many :logistics_services
end
