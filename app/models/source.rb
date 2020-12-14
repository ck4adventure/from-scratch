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
class Source < ApplicationRecord
  validates :author, presence: true

  has_many :citations

  has_many :recipes, through: :citations
end
