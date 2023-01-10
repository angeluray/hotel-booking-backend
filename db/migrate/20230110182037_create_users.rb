class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :role

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
