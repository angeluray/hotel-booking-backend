class Hotel < ApplicationRecord
  belongs_to :city
  has_many :reservations
  has_many :users, through: :reservations
end
