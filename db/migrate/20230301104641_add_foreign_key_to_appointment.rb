# frozen_string_literal: true

class AddForeignKeyToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :appointments, :app_booking_channels
  end
end
