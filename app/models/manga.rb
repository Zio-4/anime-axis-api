class Manga < ApplicationRecord
    has_many :manga_lists
    has_many :users, through: :manga_lists


    has_many :forum_posts
end
