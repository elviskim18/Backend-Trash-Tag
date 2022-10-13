class PostSerializer < ActiveModel::Serializer
  attributes :id, :description, :image, :user_id
end
