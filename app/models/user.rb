class User < ApplicationRecord
  has_secure_password
  has_many :reservations
  has_many :hotels, through: :reservations

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
