class CreateAppbookingChannels < ActiveRecord::Migration[7.0]
  def change
    create_table :appbooking_channels do |t|
      t.integer :id
      t.string :app_booking_channel_name

      t.timestamps
    end
  end
end
