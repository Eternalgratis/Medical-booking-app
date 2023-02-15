# frozen_string_literal: true

# :nodoc:

class DropAppBookingAppointment < ActiveRecord::Migration[7.0]
  def change
    drop_table :app_booking_appointment
  end
end
