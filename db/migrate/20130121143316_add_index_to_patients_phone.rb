class AddIndexToPatientsPhone < ActiveRecord::Migration
  def change
  	add_index :patients, :phone, unique: true
  end
end
