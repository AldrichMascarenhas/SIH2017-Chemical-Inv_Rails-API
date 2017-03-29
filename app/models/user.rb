class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  has_many :producers


  has_many :warehouses

  has_many :logistics
  include DeviseTokenAuth::Concerns::User


  def token_validation_response
    UserSerializer.new( self, root: false )
  end
end
