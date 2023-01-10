class Api::V1::ReservationsController < ApplicationController
  before_action :set_api_v1_reservation, only: :destroy

  def index
    @reservations = Reservation.all
    render json: @reservations, status: 200
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: { message: 'Reservation has been successfully created' }
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @reservation.destroy
      render json: { message: 'Reservation has been successfully deleted' }
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:date)
  end
end
