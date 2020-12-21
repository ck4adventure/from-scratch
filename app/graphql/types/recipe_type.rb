module Types
  class RecipeType < Types::BaseObject

    # model info made available
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :steps, String, null: true
    field :base_item, Boolean, null: true
    # associations on Recipe
    field :ingredients, [Types::IngredientType], null: true
    field :used_in, Types::RecipeType, null: true

    
  end
end
