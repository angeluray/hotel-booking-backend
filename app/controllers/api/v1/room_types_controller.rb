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
    @room_type = RoomType.find(params[:id])
    render json: @room_type
  end

  # POST /api/v1/room_types
  def create
    @room_type = RoomType.new(room_type_params)

    if @room_type.save
      render json: @room_type,
             status: :created, location: @room_type
    else
      render json: @room_type.errors,
             status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/room_types/1
  def update
    if @room_type.update(room_type_params)
      render json: @room_type
    else
      render json: @room_type.errors,
             status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/room_types/1
  def destroy
    @api_v1_room_type.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_room_type
    @room_type = RoomType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def room_type_params
    params.require(:room_type).permit(
      :type, :description, :price
    )
  end
end
