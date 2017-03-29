class ProductSerializer < ActiveModel::Serializer

  attributes :id, :name,
             :products_type,
             :description,
             :cas_number,
             :quantity,
             :quantity_type
  has_one :product_type
end
