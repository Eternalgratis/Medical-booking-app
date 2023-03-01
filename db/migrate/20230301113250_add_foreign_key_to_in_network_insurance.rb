class AddForeignKeyToInNetworkInsurance < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :in_network_insurances, :offices
  end
end
