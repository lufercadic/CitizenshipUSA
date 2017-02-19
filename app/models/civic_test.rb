class CivicTest < ApplicationRecord
  belongs_to :CivicUnit
  has_many :CivicTestAnswers
  #has_many :CivicQuestions, through: :CivicTestAnswers
end
