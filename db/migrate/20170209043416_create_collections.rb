class CreateCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :collections do |t|
      t.string :name
      t.integer :cook_id
      t.integer :food_id

      t.timestamps
    end
  end
end
