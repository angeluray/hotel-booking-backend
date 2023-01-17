class HotelSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description, :rating, :image, :image_url
end
