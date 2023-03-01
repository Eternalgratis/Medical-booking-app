class AddForeignKeyToOfficeDoctorAvailability < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :office_doctor_availabilities, :offices
  end
end
