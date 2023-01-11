class RoomType < ApplicationRecord
  has_many :reservations
  has_many :hotels, through: :reservations
  has_many :users, through: :reservations

  validates :type, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
