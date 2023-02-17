# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class Specialization < ApplicationRecord
    belongs_to :doctor through: :doctor_specialization
    validates :specialization_name
end
