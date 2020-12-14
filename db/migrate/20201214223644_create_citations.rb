class CreateCitations < ActiveRecord::Migration[6.0]
  def change
    create_table :citations do |t|
      t.integer :recipe_id, null: false
      t.integer :source_id, null: false
      t.string :page
      t.timestamps
    end

    add_index :citations, :recipe_id
    add_index :citations, :source_id
    add_index :citations, [:recipe_id, :source_id], unique: true
  end
end
