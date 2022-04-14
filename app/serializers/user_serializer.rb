class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :avatar, :animes, :mangas

  # def attributes
  #   hash = super
  #   hash.each do |key, value|
  #     if value.nil?
  #       hash.delete(key)
  #     end
  #   end
  #   hash
  # end

end
