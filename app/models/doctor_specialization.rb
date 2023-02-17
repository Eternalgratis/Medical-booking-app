# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class DoctorSpecialization < ApplicationRecord
    belongs_to :doctor, :specialization, :specialization through: :doctor_specialization
end
