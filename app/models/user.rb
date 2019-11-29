require 'bcrypt'
class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true



  has_many :strength_components
  has_many :cardio_components

end
