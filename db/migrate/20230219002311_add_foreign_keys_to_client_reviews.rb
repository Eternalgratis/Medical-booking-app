class AddForeignKeysToClientReviews < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :client_reviews, :client_account_id
    add_foreign_key :client_reviews, :doctor_id
  end
end
