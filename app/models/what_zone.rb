class WhatZone < ApplicationRecord
  belongs_to :Zone
  belongs_to :CivicAnswer
end
