class Api::V1::RoomTypesController < ApplicationController
  before_action :set_api_v1_room_type,
                only: %i[show update destroy]

  # GET /api/v1/room_types
  def index
    @room_types = RoomType.all

    render json: @room_types
  end

  # GET /api/v1/room_types/1
  def show
    render json: @api_v1_room_type
  end

  # POST /api/v1/room_types
  def create
    @api_v1_room_type = Api::V1::RoomType.new(api_v1_room_type_params)

    if @api_v1_room_type.save
      render json: @api_v1_room_type,
             status: :created, location: @api_v1_room_type
    else
      render json: @api_v1_room_type.errors,
             status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/room_types/1
  def update
    if @api_v1_room_type.update(api_v1_room_type_params)
      render json: @api_v1_room_type
    else
      render json: @api_v1_room_type.errors,
             status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/room_types/1
  def destroy
    @api_v1_room_type.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_api_v1_room_type
    @api_v1_room_type = Api::V1::RoomType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def api_v1_room_type_params
    params.require(:api_v1_room_type).permit(
      :type, :description, :price
    )
  end
end
