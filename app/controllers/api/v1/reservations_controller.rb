class Api::V1::ReservationsController < ApplicationController
  before_action :set_api_v1_reservation, only: %i[show destroy]

  def index
    @reservations = Reservation.all.includes([:user])
    render json: @reservations, status: 200
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @user = User.find(params[:user_id])
    @reservation.user = @user

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
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
    params.permit(:date, :user_id, :room_type_id, :hotel_id)
  end
end
