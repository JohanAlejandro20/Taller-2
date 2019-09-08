class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :nom_office
      t.integer :cod_office
      t.text :ubica_office
      t.string :tipo_office

      t.timestamps
    end
  end
end
