class CivicType < ApplicationRecord
	has_many :CivicTags
	has_many :CivicQuestions, through: :CivicTags
end
