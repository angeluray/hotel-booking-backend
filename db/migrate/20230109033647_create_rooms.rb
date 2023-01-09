class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :description
      t.string :benefits
      t.decimal :price_per_day, precision: 5, scale: 2

      t.timestamps
    end
  end
end
