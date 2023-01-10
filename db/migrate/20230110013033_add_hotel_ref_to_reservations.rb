class AddHotelRefToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :hotel, null: false, foreign_key: true
  end
end
