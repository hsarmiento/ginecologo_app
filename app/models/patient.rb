# == Schema Information
#
# Table name: patients
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  last_name     :string(255)
#  date_of_birth :date
#  email         :string(255)
#  phone         :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Patient < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :last_name, :name, :phone
  has_many :reserves
end
