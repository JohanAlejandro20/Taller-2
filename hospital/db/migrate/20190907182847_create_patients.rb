class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :nom_patient
      t.string :ape_patient
      t.integer :cc_patient
      t.date :fecha_nacimiento

      t.timestamps
    end
  end
end
