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

class Clinic < ActiveRecord::Base
  attr_accessible :address, :city, :name, :phone
  has_many :doctors
end
