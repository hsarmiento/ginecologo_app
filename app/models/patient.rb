class Patient < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :last_name, :name, :phone
  has_many :reserves
end
