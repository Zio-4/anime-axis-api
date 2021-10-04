class MangaList < ApplicationRecord
  belongs_to :manga
  belongs_to :user
end
