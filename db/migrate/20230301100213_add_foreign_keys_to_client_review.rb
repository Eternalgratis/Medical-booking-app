# frozen_string_literal: true

class AddForeignKeysToClientReview < ActiveRecord::Migration[7.0]
  def change
    add_reference :client_reviews, :client_account, null: false, foreign_key: true
  end
end
