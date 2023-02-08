class HospitalAffiliation < ApplicationRecord
    belongs_to :doctor
    has_many :office
end
