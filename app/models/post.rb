class Post < ApplicationRecord
    validates :description, presence: true
    validates :image, presence: true
    belongs_to :user
    has_many :tags
end
