class Recipe < ApplicationRecord
  has_many :Ingredients
  has_many :collections

end
