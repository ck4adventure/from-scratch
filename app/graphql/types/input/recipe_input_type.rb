module Types
  module Input
    class RecipeInputType < Types::BaseInputObject
      argument :title, String, required: true
      argument :description, String, required: false
      argument :steps, String, required: false
      argument :base_item, Boolean, required: false
    end
  end
end