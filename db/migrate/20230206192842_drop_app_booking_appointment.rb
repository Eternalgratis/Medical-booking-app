# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor


class DropAppBookingAppointment < ActiveRecord::Migration[7.0]
  def change
    drop_table :app_booking_appointment
  end
end
