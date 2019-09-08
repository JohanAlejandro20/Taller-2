class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.references :office, null: false, foreign_key: true
      t.date :fecha_appointment
      t.time :hora_inicio
      t.time :hora_final
      t.text :motiva_cita

      t.timestamps
    end
  end
end
