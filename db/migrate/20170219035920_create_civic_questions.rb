class CreateCivicQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :civic_questions do |t|
      t.string :Descripcion
      t.boolean :Destacada

      t.timestamps
    end
  end
end
