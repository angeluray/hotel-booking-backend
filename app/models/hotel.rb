class Hotel < ApplicationRecord
  belongs_to :city
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  has_many :room_types, through: :reservations

  has_one_attached :images, dependent: :destroy
  # has_one_attached :images do |attachable|
  #   attachable.variant :thumb, resize_to_limit: [100, 100]
  # end

  def avatar_url
    Rails.application.routes.url_helpers.url_for(images)
  end
end
