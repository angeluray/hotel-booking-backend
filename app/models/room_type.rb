class RoomType < ApplicationRecord
  has_many :reservations
  has_many :hotels, through: :reservations, dependent: :destroy
  has_many :users, through: :reservations, dependent: :destroy

  validates :type, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
