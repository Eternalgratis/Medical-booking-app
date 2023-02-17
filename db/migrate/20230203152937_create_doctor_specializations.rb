# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor


class CreateDoctorSpecializations < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_specializations do |t|
      t.integer :id
      t.integer :doctor_id
      t.integer :specialization_id

      t.timestamps
    end
  end
end
