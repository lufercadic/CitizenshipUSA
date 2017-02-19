class CreateCivicUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :civic_units do |t|
      t.references :User, foreign_key: true
      t.integer :NumEvaluaciones
      t.integer :Puntaje

      t.timestamps
    end
  end
end
