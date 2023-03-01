# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class OfficeDoctorAvailability < ApplicationRecord
  belongs_to :office
  validates :day_of_week, :start_time, :end_time, :is_available,
            :reason_of_unavailability, presence: true
end
