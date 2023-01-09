class Api::V1::HotelsController < ApplicationController
  before_action :set_api_v1_hotel, only: %i[ show update destroy ]

  # GET /api/v1/hotels
  def index
    @api_v1_hotels = Api::V1::Hotel.all

    render json: @api_v1_hotels
  end

  # GET /api/v1/hotels/1
  def show
    render json: @api_v1_hotel
  end

  # POST /api/v1/hotels
  def create
    @api_v1_hotel = Api::V1::Hotel.new(api_v1_hotel_params)

    if @api_v1_hotel.save
      render json: @api_v1_hotel, status: :created, location: @api_v1_hotel
    else
      render json: @api_v1_hotel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/hotels/1
  def update
    if @api_v1_hotel.update(api_v1_hotel_params)
      render json: @api_v1_hotel
    else
      render json: @api_v1_hotel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/hotels/1
  def destroy
    @api_v1_hotel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_hotel
      @api_v1_hotel = Api::V1::Hotel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_hotel_params
      params.require(:api_v1_hotel).permit(:name, :description, :rating, :image)
    end
end
