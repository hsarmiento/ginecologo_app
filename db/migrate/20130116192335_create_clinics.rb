class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :city

      t.timestamps
    end
  end
end
