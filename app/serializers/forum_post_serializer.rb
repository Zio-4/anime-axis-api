class ForumPostSerializer < ActiveModel::Serializer
  attributes :id, :content, :title, :post_time, :number_of_comments
  belongs_to :user


  def post_time
    "#{self.object.created_at.strftime("%b %d, %Y")}"
  end

  def number_of_comments
    self.object.comments.length
  end

end
