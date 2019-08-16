class Owner::SportifsController < ApplicationController
  def index
    @sportifs = policy_scope(current_user.sportifs).order(created_at: :desc)
  end
end
