class CivicTag < ApplicationRecord
  belongs_to :CivicQuestion
  belongs_to :CivicType
end
