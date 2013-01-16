class Reserve < ActiveRecord::Base
  attr_accessible :available, :datetime, :doctor_id, :patient_id
  belongs_to :doctor, :patient
end
