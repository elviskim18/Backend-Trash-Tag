class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username,  :avatar, :phone

  has_many :posts
end
