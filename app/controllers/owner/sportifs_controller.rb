class Owner::SportifsController < ApplicationController
  def index
    @sportifs = policy_scope(Sportif).order(created_at: :desc)
  end

end
