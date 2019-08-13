class SportifsController < ApplicationController
  def index
    @sportifs = Sportif.all
  end

  def show
    @sportif = Sportif.find(params[:id])
  end
end
