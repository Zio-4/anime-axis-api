class ForumPostSerializer < ActiveModel::Serializer
  attributes :id, :content, :title, :post_time
  belongs_to :user


  def post_time
    "#{self.object.created_at.strftime("%b %d, %Y")}"
  end
end
