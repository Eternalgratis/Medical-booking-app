# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor


class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.integer :client_account_id
      t.integer :office_id
      t.time :probable_start_time
      t.time :actual_end_time
      t.integer :appointment_status_id
      t.date :appointment_taken_date
      t.integer :app_booking_channel_id

      t.timestamps
    end
  end
end
