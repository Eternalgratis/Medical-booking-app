class HospitalAffiliation < ApplicationRecord
    belongs_to :doctor
    has_many :office through: :doctor
    validates :hospital_name, :city, :country, :start_date, :end_date, presence:true
end
