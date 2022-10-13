class UserWithTrashSerializer < ActiveModel::Serializer
  attributes :id, :name, :username,  :avatar, :phone

  has_many :trashs
end
