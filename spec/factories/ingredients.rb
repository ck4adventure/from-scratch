# == Schema Information
#
# Table name: ingredients
#
#  id         :bigint           not null, primary key
#  measure    :string
#  qty        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :integer          not null
#  recipe_id  :integer          not null
#
# Indexes
#
#  index_ingredients_on_item_id    (item_id)
#  index_ingredients_on_recipe_id  (recipe_id)
#
FactoryBot.define do
  factory :ingredient do
    recipe_id { 1 }
    food_id { 1 }
    qty { "MyString" }
    measure { "MyString" }
  end
end
