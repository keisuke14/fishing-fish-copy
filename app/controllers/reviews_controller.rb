class ReviewsController < ApplicationController
  def index
  end

  def create
    @review = Review.new(review_params)
    # 送られてきた情報を格納する
    @review.user_id = current_user.id
    if @review.save
      redirect_to fishing_park_reviews_path(@review.fishing_park)
    else
      # renderはアクションを返さないため変数が足りているかを確認する
      @fishing_park = FishingPark.find(params[:fishing_park_id])
      render "fishing_parks/show"
    end
  end

  private
  def review_params
    # viewから送られてくるのがfishing_parkのためuser_idは記述しない
    params.require(:review).permit(:fishing_park_id, :content, :score)
  end
end
