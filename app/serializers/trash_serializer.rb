class TrashSerializer < ActiveModel::Serializer
  attributes :id, :description, :image, :lattitude, :longitude, :user_id
end
