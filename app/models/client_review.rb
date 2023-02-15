# frozen_string_literal: true

# :nodoc:
class ClientReview < ApplicationRecord
  belong_to :doctor, through: :clients
  belong_to :client, through: :doctors
  validates :is_review_anonymous, :wait_time_waiting, :bedside_manner_rating,
            :overall_rating, :review, :is_doctor_recommended, :review_date, presence: true
end
