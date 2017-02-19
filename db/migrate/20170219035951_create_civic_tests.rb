class CreateCivicTests < ActiveRecord::Migration[5.0]
  def change
    create_table :civic_tests do |t|
      t.references :CivicUnit, foreign_key: true
      t.integer :NumPreguntas
      t.integer :NumCorrectas
      t.integer :Puntaje
      t.boolean :Aprobado
      t.datetime :Finalizo

      t.timestamps
    end
  end
end
