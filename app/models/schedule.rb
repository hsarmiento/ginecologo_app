class Schedule < ActiveRecord::Base
  attr_accessible :day, :doctor_id, :finish_hour, :start_hour
  has_many :doctors
end
