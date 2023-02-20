class AppBookingChannel < ApplicationRecord
    has_many :appointment
    validates: :app_booking_channel_name, presence:true
end
