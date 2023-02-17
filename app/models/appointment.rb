class Appointment < ApplicationRecord
    belongs_to :appointment_status, :app_booking_channel, :office, :client_account
    validates: :
end
