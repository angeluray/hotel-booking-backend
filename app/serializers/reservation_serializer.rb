class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :date

  belongs_to :user
  belongs_to :room_type
  belongs_to :hotel
end
