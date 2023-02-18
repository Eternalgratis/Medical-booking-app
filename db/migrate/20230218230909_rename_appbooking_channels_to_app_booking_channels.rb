class RenameAppbookingChannelsToAppBookingChannels < ActiveRecord::Migration[7.0]
  def change
    rename_table :appbooking_channels, :app_booking_channels
  end
end
