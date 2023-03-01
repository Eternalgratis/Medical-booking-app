class AddForeignKeysToOffice < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :offices, :doctors
    add_foreign_key :offices, :hospital_affiliations
  end
end
