# frozen_string_literal: true

# :nodoc:
class AppbookingChannel < ApplicationRecord
  has_many :appointments
  validates :app_booking_channel_name, presence: true
end
