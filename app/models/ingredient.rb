class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  validates :name, :quantity, presence: true
  validates :name, uniqueness: true

end