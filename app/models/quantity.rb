class Quantity < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  def ingredient_attributes=(ingredient)

  end

end
