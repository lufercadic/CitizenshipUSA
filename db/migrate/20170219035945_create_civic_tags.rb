class CreateCivicTags < ActiveRecord::Migration[5.0]
  def change
    create_table :civic_tags do |t|
      t.references :CivicQuestion, foreign_key: true
      t.references :CivicType, foreign_key: true

      t.timestamps
    end
  end
end
