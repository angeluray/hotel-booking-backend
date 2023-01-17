class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room_type
  belongs_to :hotel
end
