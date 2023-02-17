# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor


class CreateOffices < ActiveRecord::Migration[7.0]
  def change
    create_table :offices do |t|
      t.integer :id
      t.integer :doctor_id
      t.integer :hospital_affiliation_id
      t.integer :time_slot_per_client_in_min
      t.integer :first_consultation_fee
      t.integer :followup_consultation_fee
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip

      t.timestamps
    end
  end
end
