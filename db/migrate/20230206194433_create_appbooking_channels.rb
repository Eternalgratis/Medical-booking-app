# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor


class CreateAppbookingChannels < ActiveRecord::Migration[7.0]
  def change
    create_table :appbooking_channels do |t|
      t.integer :id
      t.string :app_booking_channel_name

      t.timestamps
    end
  end
end
