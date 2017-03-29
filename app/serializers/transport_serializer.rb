class TransportSerializer < ActiveModel::Serializer
  attributes :id, :name, :uid
  belongs_to :logistic
end
