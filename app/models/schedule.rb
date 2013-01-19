# == Schema Information
#
# Table name: schedules
#
#  id          :integer          not null, primary key
#  doctor_id   :integer
#  day         :string(255)
#  start_hour  :time
#  finish_hour :time
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Schedule < ActiveRecord::Base
  attr_accessible :day, :doctor_id, :finish_hour, :start_hour
  has_many :doctors
end
