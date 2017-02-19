class CivicQuestion < ApplicationRecord
	has_many :CivicAnswers
	has_many :CivicTags
	has_many :CivicTypes, through: :CivicTags
end
