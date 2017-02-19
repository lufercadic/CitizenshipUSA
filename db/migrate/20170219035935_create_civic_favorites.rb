class CreateCivicFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :civic_favorites do |t|
      t.references :CivicUnit, foreign_key: true
      t.references :CivicAnswer, foreign_key: true
      t.references :CivicQuestion, foreign_key: true

      t.timestamps
    end
  end
end
