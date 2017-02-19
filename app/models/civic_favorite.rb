class CivicFavorite < ApplicationRecord
  belongs_to :CivicUnit
  belongs_to :CivicAnswer
  belongs_to :CivicQuestion
end
