class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :provider, :uid, :name, :nickname, :image

  has_many :producers

  has_many :logistics

  has_many :warehouses
end


