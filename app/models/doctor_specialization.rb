class DoctorSpecialization < ApplicationRecord
    belongs_to :doctor, :specialization, :specialization through: :doctor_specialization
end
