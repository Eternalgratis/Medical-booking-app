class AddForeignKeyToClientReview < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :client_reviews, :doctors
  end
end
