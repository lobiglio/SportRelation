class ReservationsController < ApplicationController
  def index
    @reservations = policy_scope(current_user.manager_reservations)
  end

  def create
    @reservation = Reservation.new
    authorize @reservation
    @reservation.sportif = Sportif.find(params[:sportif_id])
    @reservation.user = current_user

    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(status: params[:status].to_i)

    redirect_to reservations_path
  end
end
