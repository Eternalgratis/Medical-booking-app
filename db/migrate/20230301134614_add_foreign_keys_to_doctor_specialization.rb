# frozen_string_literal: true

class AddForeignKeysToDoctorSpecialization < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :doctor_specializations, :doctors
    add_foreign_key :doctor_specializations, :specializations
  end
end
