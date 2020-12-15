module Queries
  class FetchRecipes < Queries::BaseQuery
    # Returns all recipes that aren't base items, ie: flour
    type [Types::RecipeType], null: false

    def resolve
      Recipe.where(base_item: false).order(created_at: :desc)
    end
  end
end