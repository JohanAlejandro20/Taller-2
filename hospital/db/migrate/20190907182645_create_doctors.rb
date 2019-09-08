class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :nom_doctor
      t.string :ape_doctor
      t.integer :cc_doctor
      t.integer :celular
      t.text :tipo_doctor

      t.timestamps
    end
  end
end
