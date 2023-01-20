class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :description
      t.float :rating
      t.string :image

      t.timestamps
    end
  end
end
