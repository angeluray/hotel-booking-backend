class User < ApplicationRecord
    has_secure_password

    has_many :reservations

    validates :name, presence: {message: "Name field should not be empty."}
    validates :username, presence: {message: "You should add a username."}
    validates :email, uniqueness: {message: "This email is already registered."}, email: true
end
