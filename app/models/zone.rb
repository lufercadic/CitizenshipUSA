class Zone < ApplicationRecord
	has_many :WhatZones
    has_many :CivicAnswers, through: :WhatZones
end
