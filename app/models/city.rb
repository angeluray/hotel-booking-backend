class City < ApplicationRecord
  has_many :hotels, dependent: :destroy
end
