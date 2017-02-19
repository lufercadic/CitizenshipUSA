class CreateZones < ActiveRecord::Migration[5.0]
  def change
    create_table :zones do |t|
      t.string :Nombre
      t.boolean :Principal

      t.timestamps
    end
  end
end
