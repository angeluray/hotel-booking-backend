class City < ApplicationRecord
  has_many :hotels, dependent: :destroy

  validates :name, presence: true
end
