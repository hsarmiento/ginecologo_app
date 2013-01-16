class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :doctor_id
      t.string :day
      t.time :start_hour
      t.time :finish_hour

      t.timestamps
    end
  end
end
