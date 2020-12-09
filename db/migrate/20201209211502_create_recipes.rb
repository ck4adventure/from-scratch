class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text :description
      t.text :steps
      t.boolean :base_item, default: false

      t.timestamps
    end

    add_index :recipes, :title
  end
end
