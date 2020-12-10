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
class Ingredient < ApplicationRecord
  validates :recipe_id, :item_id, presence: true
  belongs_to :recipe, inverse_of: :ingredients
  
  belongs_to :item,
    class_name: :Recipe,
    foreign_key: :item_id 


end
