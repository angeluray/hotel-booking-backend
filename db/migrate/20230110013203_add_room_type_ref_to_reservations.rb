class AddRoomTypeRefToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :room_type, null: false, foreign_key: true
  end
end
