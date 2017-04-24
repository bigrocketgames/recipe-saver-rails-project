class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructions
  belongs_to :user
end
