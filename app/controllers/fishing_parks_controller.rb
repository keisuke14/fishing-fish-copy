class FishingParksController < ApplicationController
  before_action :authenticate_user!


  def new
    @fishing_park = FishingPark.new
  end

  def create
    @fishing_park = FishingPark.new(fishing_park_params)
    @fishing_park.save!
    redirect_to fishing_parks_path
  end

  def index
    @fishing_parks = FishingPark.all
    @fishing_park = FishingPark.new
  end

  def show
    @fishing_park = FishingPark.find(params[:id])
  end

  def edit
    @fishing_park = FishingPark.find(params[:id])
  end

  def update
  end
end

  private
  def fishing_park_params
    params.require(:fishing_park).permit(:name, :address, :fee, :children_fee, :image)
  end

  def user_admin
    @fishing_park = FishingPark.find(params[:id])
    if  current_user.admin == false
      redirect_to root_path
    else
        render action: "index"
    end
  end
