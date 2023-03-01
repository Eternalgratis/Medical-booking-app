# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class Doctor < ApplicationRecord
     has_many :specializations through: :doctor_specializations, :client_accounts,
     :hospital_affiliations, :offices, :qualifications
     validates :first_name, :last_name, :professioal_statement, 
     :practicing_from, presence:true
end
