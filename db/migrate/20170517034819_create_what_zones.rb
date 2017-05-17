class CreateWhatZones < ActiveRecord::Migration[5.0]
  def change
    create_table :what_zones do |t|
      t.references :Zone, foreign_key: true
      t.references :CivicAnswer, foreign_key: true

      t.timestamps
    end
  end
end
