class CreateCivicTestAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :civic_test_answers do |t|
      t.references :CivicTest, foreign_key: true
      t.references :CivicQuestion, foreign_key: true
      t.references :CivicAnswer, foreign_key: true
      t.boolean :Correcta

      t.timestamps
    end
  end
end
