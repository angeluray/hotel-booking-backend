class Api::V1::HotelsController < ApplicationController
  before_action :set_hotel, only: %i[show update destroy]

  # GET /api/v1/hotels
  def index
    @hotels = []

    Hotel.all.each do |hotel|
      @hotels.push(hotel.as_json.merge({ image: url_for(hotel.image) }))
    end
    if @hotels.size.positive?
      render json: @hotels
    else
      render json: { errors: 'Hotels not found' }, status: :not_found
    end
  end

  # GET /api/v1/hotels/1
  def show
    @one = []
    @hotel = Hotel.find(params[:id])
    @one.push(@hotel.as_json.merge({ image: url_for(@hotel.image) }))

    render json: @one
  end

  # POST /api/v1/hotels
  def create
    @hotel = Hotel.new(hotel_params)
    @city = City.find(params['city_id'])

    @hotel.city = @city
    if @hotel.save
      render json: @hotel, status: :created
    else
      render json: @hotel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/hotels/1
  def update
    @hotel = Hotel.find(params[:id])
    if @hotel.update(hotel_params)
      render json: @hotel
    else
      render json: @hotel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/hotels/1
  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy
    render json: { message: 'Hotel has successfully been deleted' }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_hotel
    @hotel = Hotel.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def hotel_params
    params.permit(:name,
                  :description, :rating, :image, :city_id)
  end

  def city_params
    params.permit(:name)
  end
end
