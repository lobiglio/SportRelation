require 'user'

class Owner::ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def update?
    record.user == user
  end
end
