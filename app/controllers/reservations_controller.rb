class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @sportif = Sportif.find(params[:sportif_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.sportif = Sportif.find(params[sportif_id])
    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:total_price)
  end
end
