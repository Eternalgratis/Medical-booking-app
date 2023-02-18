# frozen_string_literal: true

# This is a class that represents an appointment made by a client to see a doctor
# Iy contains infomation about the time, date and details of the doctor


class CreateInNetworkInsurances < ActiveRecord::Migration[7.0]
  def change
    create_table :in_network_insurances do |t|
      t.string :insurance_name
      t.integer :office_id

      t.timestamps
    end
  end
end
