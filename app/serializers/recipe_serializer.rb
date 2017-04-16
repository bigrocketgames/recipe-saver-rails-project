class RecipeSerializer < ActiveModel::Serializer
  attributes :name, :description, :instructions
  belongs_to :user
end
