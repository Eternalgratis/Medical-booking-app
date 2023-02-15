# frozen_string_literal: true

# :nodoc:

class CreateAppointmentStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :appointment_statuses do |t|
      t.integer :id
      t.string :status

      t.timestamps
    end
  end
end
