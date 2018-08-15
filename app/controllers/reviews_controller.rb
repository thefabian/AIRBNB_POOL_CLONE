class ReviewsController < ApplicationController

 def show
    @pool = Pool.find(params[:id])
    @review = Review.new
  end

  def create
    @pool = Pool.find(params[:pool_id])
    @review = Review.new(review_params)
    @review.pool = @pool
    @review.user = current_user
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

end
