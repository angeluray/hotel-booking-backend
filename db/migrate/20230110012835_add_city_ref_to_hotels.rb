class AddCityRefToHotels < ActiveRecord::Migration[7.0]
  def change
    add_reference :hotels, :city, null: false, foreign_key: true
  end
end
