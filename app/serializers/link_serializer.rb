class LinkSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :description, :thumbnail_url
end
