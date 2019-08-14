class Admin::ReservationsController < ApplicationController

  def index
    @reservations = current_user.manager_reservations
  end

  def update
    @reservation = Reservation.find(params[:id])
    # authorize @reservation
    @reservation.update(status: params[:status].to_i)

    # if @reservation.status == :accepted
    #   @reservation.status
    # else
    #   @reservation.status
    # end

    redirect_to admin_reservations_path
  end

  private

  # def reservation_params
  #   params.require(:reservation).permit!
  # end
end
