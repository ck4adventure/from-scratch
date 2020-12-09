class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id, null: false
      t.integer :food_id, null: false
      t.string :qty
      t.string :measure

      t.timestamps
    end

    add_index :ingredients, :recipe_id
    add_index :ingredients, :food_id

  end
end
