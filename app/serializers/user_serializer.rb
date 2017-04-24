class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :recipes, serializer: UserRecipeSerializer
end
