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

class Patient < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :last_name, :name, :phone, :password, :password_confirmation
  has_many :reserves
  has_secure_password

  before_save {|patient| patient.email = email.downcase}
  before_save {|patient| patient.name = name.camelize}
  before_save {|patient| patient.last_name = last_name.camelize}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :date_of_birth, presence: true
  validates :name, presence: true, length: {maximum: 50}
  validates :last_name, presence:true, length: {maximum: 50}
  validates :phone, presence:true, length: {minimum: 7}, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: {minimum: 6}
  validates :password_confirmation, presence: true
end
