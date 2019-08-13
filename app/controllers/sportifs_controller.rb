class SportifsController < ApplicationController
  before_action :set_sportif, only: [:show, :edit, :update, :destroy]

  def index
    @sportifs = Sportif.all
  end

  def show
    @sportif = Sportif.find(params[:id])
  end


  def new
    @sportif = Sportif.new
  end

  def create
    @sportif = Sportif.new(sportif_params)
    if @sportif.save
      redirect_to sportif_path(@sportif)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @sportif.update(sportif_params)
    redirect_to sportif_path(@sportif)
  end

  private

  def set_sportif
    @sportif = Sportif.find(params[:id])
  end

  def sportif_params
    params.require(:sportif).permit(:name, :address, :description, :photo, :offers)
  end
end
