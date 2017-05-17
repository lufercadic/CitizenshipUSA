class CivicAnswer < ApplicationRecord
  belongs_to :CivicQuestion
  belongs_to :Zone
  has_many :WhatZones
  has_many :Zones, through: :WhatZones
end
