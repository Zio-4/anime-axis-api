class ForumPost < ApplicationRecord
  belongs_to :forum
  belongs_to :user
  belongs_to :anime
  belongs_to :manga
end
