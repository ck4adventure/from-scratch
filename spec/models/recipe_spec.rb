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
require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'db and model properties' do
    describe 'it should have db columns for title, desc, steps and base_item' do
      it { should have_db_column(:title) }
      it { should have_db_column(:description) }
      it { should have_db_column(:steps) }
      it { should have_db_column(:base_item) }
    end

    describe 'it should have indexes for: title' do
      it { should have_db_index(:title) }
    end
  end

  describe 'model validations' do 
      subject { build(:recipe) }
      it { should validate_presence_of(:title) }
  end
end
