class Specialization < ApplicationRecord
    belongs_to :doctor through: :doctor_specialization
end
