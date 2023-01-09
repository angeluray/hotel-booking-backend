class Api::V1::ReservationsController < ApplicationController
  before_action :set_api_v1_reservation,
                only: %i[show update destroy]

  # GET /api/v1/reservations
  def index
    @api_v1_reservations = Api::V1::Reservation.all

    render json: @api_v1_reservations
  end

  # GET /api/v1/reservations/1
  def show
    render json: @api_v1_reservation
  end

  # POST /api/v1/reservations
  def create
    @api_v1_reservation = Api::V1::Reservation.new(api_v1_reservation_params)

    if @api_v1_reservation.save
      render json: @api_v1_reservation,
             status: :created, location: @api_v1_reservation
    else
      render json: @api_v1_reservation.errors,
             status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/reservations/1
  def update
    if @api_v1_reservation.update(api_v1_reservation_params)
      render json: @api_v1_reservation
    else
      render json: @api_v1_reservation.errors,
             status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/reservations/1
  def destroy
    @api_v1_reservation.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_api_v1_reservation
    @api_v1_reservation = Api::V1::Reservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def api_v1_reservation_params
    params.require(:api_v1_reservation).permit(:date)
  end
end
