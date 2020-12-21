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
class Citation < ApplicationRecord

  belongs_to :recipe
  belongs_to :source
end
