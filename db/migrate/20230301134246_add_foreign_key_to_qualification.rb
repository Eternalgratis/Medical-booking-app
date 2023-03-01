class AddForeignKeyToQualification < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :qualifications, :doctors
  end
end
