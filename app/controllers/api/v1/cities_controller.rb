class Api::V1::CitiesController < ApplicationController
  before_action :set_api_v1_city,
                only: %i[show update destroy]

  # GET /api/v1/cities
  def index
    @cities = City.all
    render json: @cities
  end

  # GET /api/v1/cities/1
  def show
    @city = City.find(params[:id])
    render json: @city
  end

  # POST /api/v1/cities
  def create
    @city = City.new(city_params)

    if @city.save
      render json: @city, status: :created, location: @city
    else
      render json: @city.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/cities/1
  def update
    if @city.update(city_params)
      render json: @city
    else
      render json: @city.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/cities/1
  def destroy
    @city = City.find(params[:id])
    @city.destroy
    render json: { city: @city, message: 'City has successfully been deleted' }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_city
    @city = City.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def city_params
    params.permit(:name)
  end
end
