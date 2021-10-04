class User < ApplicationRecord
    has_secure_password
    has_many :anime_lists
    has_many :animes, through: :anime_lists
    has_many :manga_lists
    has_many :mangas, through: :manga_lists
end
