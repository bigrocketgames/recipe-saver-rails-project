class QuantitySerializer < ActiveModel::Serializer
  attributes :amount, :ingredient_id, :recipe_id
  belongs_to :ingredient
  class IngredientSerializer < ActiveModel::Serializer
    attributes :name
  end
end
