class User < ApplicationRecord
    has_many :posts
    has_many :tags, through: :posts

    validates :name, uniqueness: true, presence: true 
end
