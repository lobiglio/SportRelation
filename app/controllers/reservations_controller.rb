class ReservationsController < ApplicationController
  def index
    @reservations = policy_scope(current_user.manager_reservations)
  end

  def new
    @sportif = Sportif.find(params[:sportif_id])
    authorize @sportif
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
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

    private

    def reservation_params
      params.require(:reservation).permit(:date_begin, :date_end, :total_price)
    end
  end
end
