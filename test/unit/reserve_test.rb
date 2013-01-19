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

require 'test_helper'

class ReserveTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
