class TransportSerializer < ActiveModel::Serializer
  attributes :id, :name, :uid
  belongs_to :logistic

  has_many :logistics_services

end
