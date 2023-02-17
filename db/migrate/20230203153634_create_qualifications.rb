# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor


class CreateQualifications < ActiveRecord::Migration[7.0]
  def change
    create_table :qualifications do |t|
      t.integer :id
      t.integer :doctor_id
      t.string :qualification_name
      t.string :institute_name
      t.date :procurement_year

      t.timestamps
    end
  end
end
