class HotelSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :description, :rating, :image
  belongs_to :city
  # def image
  #   return unless object.images.attached?

  #   {
  #     url: rails_blob_url(object.images, only_path: true)
  #   }
  # end
end
