class SportifsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_sportif, only: [:show, :edit, :update, :destroy]

  def index
    @sportifs = policy_scope(Sportif).order(created_at: :desc).geocoded
    @markers = @sportifs.map do |sportif|
      {
        lat: sportif.latitude,
        lng: sportif.longitude
      }
    end
  end

  def show
    @sportif = Sportif.find(params[:id])
    authorize @sportif
  end

  def new
    @sportif = Sportif.new
    authorize @sportif
  end

  def create
    puts "Check 1"
    @sportif = Sportif.new(sportif_params)
    authorize @sportif
    puts @sportif.inspect
    redirect_to root_path

    # @sportif = Sportif.new(sportif_params)
    # authorize @sportif
    # @sportif.user = current_user
    # if @sportif.save
    #   redirect_to sportif_path(@sportif)
    # else
    #   render :new
    # end
  end

  def edit
    authorize @sportif
  end

  def update
    authorize @sportif
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
