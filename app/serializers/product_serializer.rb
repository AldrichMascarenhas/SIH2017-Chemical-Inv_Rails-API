class ProductSerializer < ActiveModel::Serializer

  belongs_to :producer

  attributes :id, :name,
             :products_type,
             :description,
             :cas_number,
             :quantity,
             :quantity_type
end
