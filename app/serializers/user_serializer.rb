class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username,  :avatar, :phone
end
