# == Schema Information
#
# Table name: patients
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  last_name       :string(255)
#  date_of_birth   :date
#  email           :string(255)
#  phone           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
