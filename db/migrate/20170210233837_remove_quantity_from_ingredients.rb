class RemoveQuantityFromIngredients < ActiveRecord::Migration[5.0]
  def change
    remove_column :ingredients, :quantity
  end
end
