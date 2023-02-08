class Office < ApplicationRecord
    has_many :office_doctor_availability
    has_many :in_network_insurance
    has_many :appointment
    belongs_to :doctor
    belongs_to :hospital_affiliation
end
