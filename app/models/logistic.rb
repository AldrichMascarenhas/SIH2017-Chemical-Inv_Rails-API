class Logistic < ApplicationRecord
  belongs_to :user


  has_many :transports

  has_many :logistics_services
end
