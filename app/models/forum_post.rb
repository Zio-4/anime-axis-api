class ForumPost < ApplicationRecord
  belongs_to :forum, optional: true
  belongs_to :user
  has_many :comments
  # belongs_to :anime, optional: true
  # belongs_to :manga, optional: true
end
