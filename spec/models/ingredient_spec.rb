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
require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  describe 'db and model properties' do
    describe 'it should have db columns for recipe_id, food_id, qty and measure' do
      it { should have_db_column(:recipe_id) }
      it { should have_db_column(:item_id) }
      it { should have_db_column(:qty) }
      it { should have_db_column(:measure) }
    end

    describe 'it should have indexes for: recipe_id and item_id' do
      it { should have_db_index(:recipe_id) }
      it { should have_db_index(:item_id) }
    end
  end

  describe 'model validations' do 
      # subject { build(:ingredient) }
      it { should validate_presence_of(:recipe_id) }
      it { should validate_presence_of(:item_id) }
  end

  describe 'model associations' do
    it { should belong_to(:recipe) }
    it { should belong_to(:item) }
  end
end
