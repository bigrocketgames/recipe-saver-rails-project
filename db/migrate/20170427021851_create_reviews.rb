class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.text :content
      t.timestamps null: false
    end
  end
end
