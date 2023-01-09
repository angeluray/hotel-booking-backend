class User < ApplicationRecord
  has_many :reservations
  has_many :hotels, through: :reservations
end
