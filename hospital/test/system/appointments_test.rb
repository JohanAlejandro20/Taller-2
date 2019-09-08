require "application_system_test_case"

class AppointmentsTest < ApplicationSystemTestCase
  setup do
    @appointment = appointments(:one)
  end

  test "visiting the index" do
    visit appointments_url
    assert_selector "h1", text: "Appointments"
  end

  test "creating a Appointment" do
    visit appointments_url
    click_on "New Appointment"

    fill_in "Doctor", with: @appointment.doctor_id
    fill_in "Fecha appointment", with: @appointment.fecha_appointment
    fill_in "Hora final", with: @appointment.hora_final
    fill_in "Hora inicio", with: @appointment.hora_inicio
    fill_in "Motiva cita", with: @appointment.motiva_cita
    fill_in "Office", with: @appointment.office_id
    fill_in "Patient", with: @appointment.patient_id
    click_on "Create Appointment"

    assert_text "Appointment was successfully created"
    click_on "Back"
  end

  test "updating a Appointment" do
    visit appointments_url
    click_on "Edit", match: :first

    fill_in "Doctor", with: @appointment.doctor_id
    fill_in "Fecha appointment", with: @appointment.fecha_appointment
    fill_in "Hora final", with: @appointment.hora_final
    fill_in "Hora inicio", with: @appointment.hora_inicio
    fill_in "Motiva cita", with: @appointment.motiva_cita
    fill_in "Office", with: @appointment.office_id
    fill_in "Patient", with: @appointment.patient_id
    click_on "Update Appointment"

    assert_text "Appointment was successfully updated"
    click_on "Back"
  end

  test "destroying a Appointment" do
    visit appointments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appointment was successfully destroyed"
  end
end
