class Logistic < ApplicationRecord
  belongs_to :user


  has_many :transports
end
