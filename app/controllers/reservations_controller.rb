class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def create
    @reservation = Reservation.new
    @reservation.sportif = Sportif.find(params[:sportif_id])
    @reservation.user = current_user

    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end
end
