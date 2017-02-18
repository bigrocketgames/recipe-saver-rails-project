class Quantity < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  def ingredient_attributes=(ingredient)
    self.ingredient = Ingredient.find_or_create_by(name: ingredient.fetch("name"))
    self.ingredient.update(ingredient)
  end

end
