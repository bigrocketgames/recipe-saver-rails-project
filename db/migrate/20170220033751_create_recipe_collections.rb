class CreateRecipeCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_collections do |t|
      t.integer :recipe_id
      t.integer :collection_id

      t.timestamps
    end
  end
end
