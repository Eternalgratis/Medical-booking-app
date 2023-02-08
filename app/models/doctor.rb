class Doctor < ApplicationRecord
     has_many :specialization through: :doctor_specialization
     has_many :client_account through: :client_review
     has_many :office
end
