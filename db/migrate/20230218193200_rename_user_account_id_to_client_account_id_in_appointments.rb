class RenameUserAccountIdToClientAccountIdInAppointments < ActiveRecord::Migration[7.0]
  def change
    rename_column :appointments, :user_account_id, :client_account_id
  end
end
