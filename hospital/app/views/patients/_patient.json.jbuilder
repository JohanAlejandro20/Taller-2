json.extract! patient, :id, :nom_patient, :ape_patient, :cc_patient, :fecha_nacimiento, :created_at, :updated_at
json.url patient_url(patient, format: :json)
