class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :provider, :uid, :name, :nickname, :image

  has_many :producers
end


