# frozen_string_literal: true

class Office < ApplicationRecord
  has_many :office_doctor_availability, :in_network_insurance, :appointment
  belongs_to :doctor, :hospital_affiliation
  validates :time_slot_per_client_in_min, :first_consultation_fee,
            :followup_consultation_fee, :street_address, :city, :state, :country, presence: true
end
