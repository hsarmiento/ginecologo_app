# == Schema Information
#
# Table name: doctors
#
#  id         :integer          not null, primary key
#  clinic_id  :integer
#  name       :string(255)
#  last_name  :string(255)
#  speciality :string(255)
#  phone      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Doctor < ActiveRecord::Base
  attr_accessible :clinic_id, :last_name, :name, :phone, :speciality
  belongs_to :clinic
  has_many :schedules
  has_many :reserves
end
