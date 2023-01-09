class CitySerializer < ActiveModel::Serializer
  attributes :id, :city_name, :country_name
end
