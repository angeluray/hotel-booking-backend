class Api::V1::CitiesController < ApplicationController
  before_action :set_api_v1_city, only: %i[show update destroy]

  # GET /api/v1/cities
  def index
    @api_v1_cities = Api::V1::City.all

    render json: @api_v1_cities
  end

  # GET /api/v1/cities/1
  def show
    render json: @api_v1_city
  end

  # POST /api/v1/cities
  def create
    @api_v1_city = Api::V1::City.new(api_v1_city_params)

    if @api_v1_city.save
      render json: @api_v1_city, status: :created, location: @api_v1_city
    else
      render json: @api_v1_city.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/cities/1
  def update
    if @api_v1_city.update(api_v1_city_params)
      render json: @api_v1_city
    else
      render json: @api_v1_city.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/cities/1
  def destroy
    @api_v1_city.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_api_v1_city
    @api_v1_city = Api::V1::City.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def api_v1_city_params
    params.require(:api_v1_city).permit(:name)
  end
end
