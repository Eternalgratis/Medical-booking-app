# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class Qualification < ApplicationRecord
  belongs_to :doctor
  validates :qualification_name, :institute_name, :procurement_year, presence: true
end
