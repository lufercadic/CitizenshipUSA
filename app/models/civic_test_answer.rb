class CivicTestAnswer < ApplicationRecord
  belongs_to :CivicTest
  belongs_to :CivicQuestion
  belongs_to :CivicAnswer
end
