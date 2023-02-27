class AddForeignKeysToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :appointments, :client_accounts
    add_foreign_key :appointments, :offices
    add_foreign_key :appointments, :appointment_statuses
    add_foreign_key :appointments, :app_booking_channel_name
  end
end
