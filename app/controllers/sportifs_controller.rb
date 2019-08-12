class SportifsController < ApplicationController
  def index
    @sportifs = Sportif.all
  end
end
