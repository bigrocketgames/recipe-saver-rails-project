class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructions
  belongs_to :user
  has_many :quantities
  has_many :reviews
  class ReviewSerializer < ActiveModel::Serializer
    attributes :title, :content, :updated_at
  end
end
