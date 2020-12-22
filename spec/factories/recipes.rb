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
FactoryBot.define do
  factory :recipe do
    title { Faker::Food.dish }
    description { Faker::Food.description }
    steps { Faker::ChuckNorris.fact }

    trait :base_item do
      base_item { true }
    end

  end


end
