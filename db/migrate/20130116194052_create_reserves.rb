class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.timestamp :datetime
      t.boolean :available

      t.timestamps
    end
  end
end
