class LogisticSerializer < ActiveModel::Serializer
  attributes :id, :logistics_type, :name
  belongs_to :user

  has_many :transports
end
