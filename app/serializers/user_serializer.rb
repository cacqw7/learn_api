class UserSerializer < ActiveModel::Serializer
  attributes :login, :avatar_url, :github_url, :name, :company, :location, :email, :bio
end
