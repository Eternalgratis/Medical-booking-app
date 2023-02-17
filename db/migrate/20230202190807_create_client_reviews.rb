# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor


class CreateClientReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :client_reviews do |t|
      t.integer :id
      t.integer :user_account_id
      t.integer :doctor_id
      t.string :is_review_anonymous
      t.integer :wait_time_rating
      t.integer :bedside_manner_rating
      t.integer :overall_rating
      t.string :review
      t.string :is_doctor_recommended
      t.date :review_date

      t.timestamps
    end
  end
end
