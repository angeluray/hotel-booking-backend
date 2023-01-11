class User < ApplicationRecord
  has_secure_password
  has_many :reservations
  has_many :hotels, through: :reservations

  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
end
