class CreateCivicAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :civic_answers do |t|
      t.string :Descripcion
      t.boolean :Correcta
      t.boolean :Activa
      t.references :CivicQuestion, foreign_key: true
      t.references :Zone, foreign_key: true

      t.timestamps
    end
  end
end
