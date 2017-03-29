class ProducerSerializer < ActiveModel::Serializer
  attributes :id, :name, :producers_type


  belongs_to :user
  has_many :product_types
end
