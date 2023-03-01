# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class Appointment < ApplicationRecord
  belongs_to :appointment_status, :app_booking_channels, :office, :client_accounts
end
