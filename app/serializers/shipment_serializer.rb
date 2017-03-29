class ShipmentSerializer < ActiveModel::Serializer
  attributes :id
  has_one :logistic
end
