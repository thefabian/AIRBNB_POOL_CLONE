class ReviewsController < ApplicationController
  def create
    @pool = Pool.find(params[:pool_id])
    @review = Review.new(review_params)
    @review.pool = @pool
    if @review.save
      redirect_to pool_path(@pool)
    else
      render "pools/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
