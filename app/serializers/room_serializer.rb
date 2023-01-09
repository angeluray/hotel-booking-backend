class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_name, :description, :benefits, :price_per_day
end
