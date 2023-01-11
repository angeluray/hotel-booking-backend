class Hotel < ApplicationRecord
  belongs_to :city
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :rating, presence: true
  validates :image, presence: true
  validates :city_id, presence: true
end
