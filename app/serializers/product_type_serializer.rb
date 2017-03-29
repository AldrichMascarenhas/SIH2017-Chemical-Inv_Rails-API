class ProductTypeSerializer < ActiveModel::Serializer
  attributes :id, :name ,:product_types_type ,:description
  belongs_to :producer
end
