class RenameUserAccountIdToClientAccountIdInClientReviews < ActiveRecord::Migration[7.0]
  def change
    rename_column :client_reviews, :user_account_id, :client_account_id
  end
end
