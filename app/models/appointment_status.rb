# frozen_string_literal: true

# :nodoc:
class AppointmentStatus < ApplicationRecord
  has_many :appointments
  validates :status, presence: true
end
