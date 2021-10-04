class Manga < ApplicationRecord
    has_many :users
    has_many :forum_posts
end
