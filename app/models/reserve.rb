# == Schema Information
#
# Table name: reserves
#
#  id         :integer          not null, primary key
#  doctor_id  :integer
#  patient_id :integer
#  datetime   :datetime
#  available  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reserve < ActiveRecord::Base
  attr_accessible :available, :datetime, :doctor_id, :patient_id
  belongs_to :doctor
  belongs_to :patient
end
