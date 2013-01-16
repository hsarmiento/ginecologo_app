class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.integer :clinic_id
      t.string :name
      t.string :last_name
      t.string :speciality
      t.string :phone

      t.timestamps
    end
  end
end
