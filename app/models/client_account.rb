class ClientAccount < ApplicationRecord
    has_many :doctor through: :client_review
    has_many :client_review
    has_one :appointment
end
