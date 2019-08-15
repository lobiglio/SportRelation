class Owner::ReservationsController < ApplicationController
  def index
    @reservations = policy_scope(current_user.manager_reservations)
  end

  def update
    @reservation = Reservation.find(params[:id])
    authorize([:owner, @reservation])
    @reservation.update(status: params[:status].to_i)

    redirect_to owner_reservations_path
  end
end
