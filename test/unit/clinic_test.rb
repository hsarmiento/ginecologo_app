# == Schema Information
#
# Table name: clinics
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address    :string(255)
#  phone      :string(255)
#  city       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ClinicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
