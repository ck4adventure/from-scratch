# == Schema Information
#
# Table name: recipes
#
#  id          :bigint           not null, primary key
#  base_item   :boolean          default(FALSE)
#  description :text
#  steps       :text
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_recipes_on_title  (title)
#
class Recipe < ApplicationRecord
  validates :title, presence: true

  has_many :ingredients, 
    inverse_of: :recipe, 
    dependent: :destroy
  
  accepts_nested_attributes_for :ingredients
  
  has_many :used_in,
    class_name: :Ingredient,
    foreign_key: :item_id 

  has_one :citation

  has_one :source, through: :citation

end
