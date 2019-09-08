json.extract! appointment, :id, :doctor_id, :patient_id, :office_id, :fecha_appointment, :hora_inicio, :hora_final, :motiva_cita, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
