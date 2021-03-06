class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :comment_time
  belongs_to :user

  def comment_time
    "#{self.object.created_at.strftime("%b %d, %Y")}"
  end

end
