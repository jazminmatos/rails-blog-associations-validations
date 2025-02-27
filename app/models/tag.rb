class Tag < ApplicationRecord
    belongs_to :user
    has_many :posts_tags
    has_many :posts, through: :posts_tags

    validates :name, uniqueness: true
end
