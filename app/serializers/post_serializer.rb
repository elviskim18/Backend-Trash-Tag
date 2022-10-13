class PostSerializer < ActiveModel::Serializer
  attributes :id, :description, :image, :user_id

  belongs_to :user
end
