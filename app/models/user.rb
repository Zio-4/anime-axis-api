class User < ApplicationRecord
    has_secure_password
    has_many :anime_lists
    has_many :animes, through: :anime_lists
    has_many :manga_lists
    has_many :mangas, through: :manga_lists

    validates :username, presence: true, confirmation: {case_sensitive: false}, uniqueness: true, length: {in: 6..30}
    validates :password, presence: true, confirmation: true

end