class User < ApplicationRecord
  has_secure_password
  has_many :reservations
  has_many :hotels, through: :reservations

  validates :email, presence: true, uniqueness: true
end
