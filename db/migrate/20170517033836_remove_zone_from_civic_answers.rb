class RemoveZoneFromCivicAnswers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :civic_answers, :Zone, foreign_key: true
  end
end
