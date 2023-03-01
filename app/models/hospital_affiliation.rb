# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class HospitalAffiliation < ApplicationRecord
    belongs_to :doctor
    has_many :offices through: :doctors
    validates :hospital_name, :city, :country, :start_date, :end_date, presence:true
end
