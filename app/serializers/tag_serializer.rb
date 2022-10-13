class TagSerializer < ActiveModel::Serializer
  attributes :id, :name, :post_id

  belongs_to :post
end
