class ProducerSerializer < ActiveModel::Serializer
  attributes :id, :name, :producers_type


  belongs_to :user
  has_many :product_types

  has_one :producer_location

end
