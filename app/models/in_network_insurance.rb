# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class InNetworkInsurance < ApplicationRecord
  belongs_to :office
  validates :insurance_name, presence: true
end
