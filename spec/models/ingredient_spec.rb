# == Schema Information
#
# Table name: ingredients
#
#  id         :bigint           not null, primary key
#  measure    :string
#  qty        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  food_id    :integer          not null
#  recipe_id  :integer          not null
#
# Indexes
#
#  index_ingredients_on_food_id    (food_id)
#  index_ingredients_on_recipe_id  (recipe_id)
#
require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
