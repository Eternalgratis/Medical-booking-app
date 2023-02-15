# frozen_string_literal: true

# :nodoc:

class CreateClientAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :client_accounts do |t|
      t.integer :id
      t.string :first_name
      t.string :last_name
      t.integer :contact_number
      t.string :email

      t.timestamps
    end
  end
end
