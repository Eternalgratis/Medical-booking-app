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
