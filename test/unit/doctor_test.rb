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

require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
