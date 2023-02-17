# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor


class CreateOfficeDoctorAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :office_doctor_availabilities do |t|
      t.integer :id
      t.integer :office_id
      t.string :day_of_week
      t.timestamp :start_time
      t.timestamp :end_time
      t.string :is_available
      t.string :reason_of_unavailability

      t.timestamps
    end
  end
end
