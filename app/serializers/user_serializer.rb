class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :avatar, :animes, :mangas

end
