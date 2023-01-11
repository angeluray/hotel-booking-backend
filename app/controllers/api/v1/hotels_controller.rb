class Api::V1::HotelsController < ApplicationController
  before_action :set_api_v1_hotel,
                only: %i[show update destroy]

  # GET /api/v1/hotels
  def index
    @hotels = Hotel.all

    render json: @hotels
  end

  # GET /api/v1/hotels/1
  def show
    @hotel = Hotel.find(params[:id])
    render json: @hotel
  end

  # POST /api/v1/hotels
  def create
    @hotel = Hotel.new(hotel_params)


    if @hotel.save
      render json: @hotel, status: :created, location: @hotel
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
                  :description, :rating, :image)
  end
end
