# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class ClientAccount < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :client_reviews, through: :doctors
    has_many :appointments
    has_many :doctors, through: :client_reviews
    validates :first_name, :last_name, :contact_number, :email, presence:true
end
