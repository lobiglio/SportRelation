class Owner::ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: current_user)
    end
  end

  def update?
    record.sportif.user == user
  end
end
