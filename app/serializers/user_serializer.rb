class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :provider, :uid, :name, :nickname, :image

  has_many :producers

  has_many :transports

  has_many :warehouses

  has_many :shipments

end


