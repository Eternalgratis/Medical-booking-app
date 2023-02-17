# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class Doctor < ApplicationRecord
     has_many :specialization through: :doctor_specialization, :client_account,
     :hospital_affiliation, :offices, :qualifications
     validates :first_name, :last_name, :professioal_statement, 
     :practicing_from, presence:true
end
