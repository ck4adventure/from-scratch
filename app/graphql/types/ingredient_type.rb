module Types
  class IngredientType < Types::BaseObject
    field :id, ID, null: false
    field :recipe_id, Integer, null: false
    field :item_id, Integer, null: false
    field :qty, String, null: true
    field :measure, String, null: true
    field :recipe, Types::RecipeType, null: false
    field :item, Types::RecipeType, null: false
  end
end
