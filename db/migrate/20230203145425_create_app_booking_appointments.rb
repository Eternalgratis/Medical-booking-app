class CreateAppBookingAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :app_booking_appointments do |t|
      t.integer :id
      t.string :app_booking_channel_name

      t.timestamps
    end
  end
end
