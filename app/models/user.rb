class User < ApplicationRecord
  has_many :reservations
  has_many :hotels, through: :reservations
  has_many :room_types, through: :reservations
  require 'securerandom'

  has_secure_password

  validates :email, presence: true
  validates :password, presence: true
  validates :username, presence: true, uniqueness: true
end
