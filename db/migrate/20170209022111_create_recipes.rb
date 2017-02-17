class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :user_id
      t.text :description
      t.text :instructions

      t.timestamps null: false
    end
  end
end
