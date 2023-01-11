class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :hotel
  belongs_to :room_type

  validates :date, presence: true, uniqueness: true
  validates :user_id, presence: true
  validates :hotel_id, presence: true
  validates :room_type_id, presence: true
end
