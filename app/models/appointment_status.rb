class AppointmentStatus < ApplicationRecord
    has_many :appointment
    validates: :status, presence:true
end
