class RoomType < ApplicationRecord
  has_many: :reservations
  has_many: :users, through: :reservations
  has_many: :hotels, through: :reservations
end
