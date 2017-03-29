class TransportSerializer < ActiveModel::Serializer
  attributes :id
  has_one :logistic
end
