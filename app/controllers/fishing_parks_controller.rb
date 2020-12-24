class FishingParksController < ApplicationController
  before_action :authenticate_user!

  def fish
    # @fishing_park = FishingPark.find(params[:id])
    #@fishing_parks = FishingPark.all
    # @fishing_parks = FishingPark.page(params[:page]).per(5)
  end

  def rank
    #番号の多い順に並び替え、表示する最大数を8個に指定する。最後にpluckでfishing_park_idカラムのみを数字で取り出すように指定。
    @all_ranks = FishingPark.find(Favorite.group(:fishing_park_id).order('count(fishing_park_id) desc').limit(8).pluck(:fishing_park_id))
  end

  def search
    @word = params[:search_word]
    @fishing_parks = FishingPark.search(@word)
  end


  def new
    @fishing_park = FishingPark.new
  end

  def create
    @fishing_park = FishingPark.new(fishing_park_params)
    @fishing_park.save!
    redirect_to fishing_parks_path
  end

  def index
    #@fishing_parks = FishingPark.all
    @fishing_park = FishingPark.new
    # kaminariでページ機能をつけるための記述
    @fishing_parks = FishingPark.page(params[:page]).per(4)
  end

  def show
    @fishing_park = FishingPark.find(params[:id])
    @review = Review.new
    @reviews = @fishing_park.reviews.page(params[:page]).per(2)
  end

  def edit
    @fishing_park = FishingPark.find(params[:id])
  end

  def update
    @fishing_park = FishingPark.find(params[:id])
    if @fishing_park.update(fishing_park_params)
      redirect_to fishing_parks_path(current_user)
    else
      render 'edit'
    end
  end

  def destroy
    # @fishing_park = FishingPark.user
    @fishing_park = FishingPark.find(params[:id])
    @fishing_park.destroy!
    redirect_to fishing_parks_path
  end

end

  private
  def fishing_park_params
    params.require(:fishing_park).permit(:name, :address, :fishing_fee, :fishing_children_fee, :image, :map_image, :tour_fee, :children_tour_fee, :body, :fish_body, :map_body)
  end

  # def user_admin
  #   @fishing_park = FishingPark.find(params[:id])
  #   if  current_user.admin == false
  #     redirect_to root_path
  #   else
  #       render action: "index"
  #   end
  # end
