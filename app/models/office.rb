# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class Office < ApplicationRecord
  has_many :office_doctor_availabilities, :in_network_insurances, :appointments
  belongs_to :doctor, :hospital_affiliation
  validates :time_slot_per_client_in_min, :first_consultation_fee,
            :followup_consultation_fee, :street_address, :city, :state, :country, presence: true
end
