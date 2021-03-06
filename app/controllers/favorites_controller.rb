class FavoritesController < ApplicationController
  before_action :set_fishing

  def create
    @favorite = Favorite.create(user_id: current_user.id, fishing_park_id: params[:fishing_park_id])
    # 非同期通信を行うためコメントアウト
    # redirect_to fishing_park_path(params[:fishing_park_id])
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, fishing_park_id: params[:fishing_park_id])
    @favorite.destroy
    # 非同期通信を行うためコメントアウト
    # redirect_to fishing_park_path(params[:fishing_park_id])
  end

  private
  def set_fishing
    @fishing_park = FishingPark.find(params[:fishing_park_id])
  end
end
