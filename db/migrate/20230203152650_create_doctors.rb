# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor


class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :professional_statement
      t.date :practicing_from

      t.timestamps
    end
  end
end
