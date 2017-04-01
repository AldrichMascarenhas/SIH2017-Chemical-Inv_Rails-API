class ProducerSerializer < ActiveModel::Serializer
  attributes :id, :name, :producers_type, :created_at


  belongs_to :user
  has_one :producer_location

  has_many :products

end
