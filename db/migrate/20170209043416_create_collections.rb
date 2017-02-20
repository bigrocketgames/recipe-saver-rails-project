class CreateCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :collections do |t|
      t.string :name
      t.integer :cook_id

      t.timestamps null: false
    end
  end
end
