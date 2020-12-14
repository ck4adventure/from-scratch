# == Schema Information
#
# Table name: citations
#
#  id         :bigint           not null, primary key
#  page       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :integer          not null
#  source_id  :integer          not null
#
# Indexes
#
#  index_citations_on_recipe_id                (recipe_id)
#  index_citations_on_recipe_id_and_source_id  (recipe_id,source_id) UNIQUE
#  index_citations_on_source_id                (source_id)
#
require 'rails_helper'

RSpec.describe Citation, type: :model do
  describe "db and model properties" do
    describe "columns" do
      it { should have_db_column(:recipe_id) }
      it { should have_db_column(:source_id) }
      it { should have_db_column(:page) }
    end

    describe "indexes" do
      it { should have_db_index(:recipe_id) }
      it { should have_db_index(:source_id) }
      it { should have_db_index([:recipe_id, :source_id])}
    end

    describe "validations" do
      it { validate_presence_of(:recipe_id) }
      it { validate_presence_of(:source_id) }
    end

    describe "associations" do 
      it { should belong_to(:recipe) }
      it { should belong_to(:source) }
    end
  end
end
