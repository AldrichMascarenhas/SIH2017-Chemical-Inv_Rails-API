class ProductType < ApplicationRecord
  belongs_to :producer

  has_many :products
end
