# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor

class ClientReview < ApplicationRecord
  belong_to :doctor, through: :client_accounts
  belong_to :client_account, through: :doctors
  validates :is_review_anonymous, :wait_time_waiting, :bedside_manner_rating,
            :overall_rating, :review, :is_doctor_recommended, :review_date, presence: true
end
