class ClientAccount < ApplicationRecord
    has_many :doctor through: :client_review, :client_review
    has_one :appointment
    validates: :first_name, :last_name, :contact_number, :email, presence:true
end
