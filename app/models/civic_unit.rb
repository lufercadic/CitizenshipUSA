class CivicUnit < ApplicationRecord
  belongs_to :User
  has_many :CivicTests
end
