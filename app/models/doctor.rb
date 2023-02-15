class Doctor < ApplicationRecord
     has_many :specialization through: :doctor_specialization, :client_account,
     :hospital_affiliation, :offices, :qualifications
     validates :first_name, :last_name, :professioal_statement, 
     :practicing_from, presence:true
end
