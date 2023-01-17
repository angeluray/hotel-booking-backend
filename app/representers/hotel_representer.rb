class HotelRepresenter
    def initialize(hotels)
      @hotels = hotels
    end
  
    def as_json
      hotels.map do |hotel|
        {
          id: hotel.id,
          name: hotel.name,
          description: hotel.description,
          rating: hotel.rating,
          image: hotel.image_url,
          city_id: hotel.city_id
        }
      end
    end
  
    private
  
    attr_reader :hotels
  end