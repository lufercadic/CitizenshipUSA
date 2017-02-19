class CivicAnswer < ApplicationRecord
  belongs_to :CivicQuestion
  belongs_to :Zone
end
