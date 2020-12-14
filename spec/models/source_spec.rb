# == Schema Information
#
# Table name: sources
#
#  id         :bigint           not null, primary key
#  author     :string           not null
#  title      :string
#  website    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sources_on_author  (author)
#  index_sources_on_title   (title)
#
require 'rails_helper'

RSpec.describe Source, type: :model do
  describe "db and model properties"
    describe "columns" do
      it { should have_db_column(:author) }
      it { should have_db_column(:title) }
      it { should have_db_column(:website) }

    end

    describe "indexes" do
      it { should have_db_index(:author) }
      it { should have_db_index(:title) }
    end

    describe "validations" do
      it { should validate_presence_of(:author) }
    end

    describe "associations" do
      it { should have_many(:citations) }
      it { should have_many(:recipes).through(:citations) }
    end


end
