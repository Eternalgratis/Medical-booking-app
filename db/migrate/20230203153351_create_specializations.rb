class CreateSpecializations < ActiveRecord::Migration[7.0]
  def change
    create_table :specializations do |t|
      t.integer :id
      t.string :specialization_name

      t.timestamps
    end
  end
end
