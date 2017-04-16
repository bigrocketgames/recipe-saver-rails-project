class UserSerializer < ActiveModel::Serializer
  attributes :email
  has_many :recipes, serializer: UserRecipeSerializer
end
