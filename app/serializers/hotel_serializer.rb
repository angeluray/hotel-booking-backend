class HotelSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :description, :rating, :image
  belongs_to :city
end
