class Doctor < ActiveRecord::Base
  attr_accessible :clinic_id, :last_name, :name, :phone, :speciality
  belongs_to :clinic
  has_many :schedules
  has_many :reserves
end
