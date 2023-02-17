# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class ClientAccount < ApplicationRecord
    has_many :doctor through: :client_review, :client_review
    has_one :appointment
    validates :first_name, :last_name, :contact_number, :email, presence:true
end
