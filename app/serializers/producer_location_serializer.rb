class ProducerLocationSerializer < ActiveModel::Serializer
  attributes :id, :fulladdress ,:state ,:pincode
  has_one :producer
end
