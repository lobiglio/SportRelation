class Admin::ReservationsController < ApplicationController
  def index
    @reservations = current_user.manager_reservations
  end
end
