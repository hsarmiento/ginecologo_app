class Clinic < ActiveRecord::Base
  attr_accessible :address, :city, :name, :phone
  has_many :doctors
end
