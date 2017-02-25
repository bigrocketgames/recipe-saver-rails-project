class AddCollectedCountToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :collected_count, :integer, default: 0
  end
end
