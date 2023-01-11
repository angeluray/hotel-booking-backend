class Hotel < ApplicationRecord
  belongs_to :city
  has_many :reservations
  has_many :users, through: :reservations

  validates :name, presence: true
  validates :description, presence: true
  validates :rating, presence: true
  validates :image, presence: true
  validates :city_id, presence: true
end
