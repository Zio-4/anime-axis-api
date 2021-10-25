class AnimeSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :score
end
