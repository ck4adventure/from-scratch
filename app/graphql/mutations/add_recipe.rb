module Mutations
  class AddRecipe < BaseMutation
    # TODO: define return fields
    field :recipe, Types::RecipeType, null: false

    # TODO: define arguments
    argument :title, String, required: true
    argument :description, String, required: false
    argument :steps, String, required: false
    argument :base_item, Boolean, required: false

    # TODO: define resolve method to use params hash
    def resolve(title:, description:, steps:, base_item:)
      recipe = Recipe.new(title: title, description: description, steps: steps, base_item: base_item)
      if recipe.save!
        { recipe: recipe }
      else
        { recipe: nil }
      end
    end
  end
end
