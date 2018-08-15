class PoolsController < ApplicationController
  def index
     if params[:query].present?
      @pools = Pool.global_search(params[:query])
    else
      @pools = Pool.all
    end
  end

  def new
    @pool = Pool.new
  end

  def create
    @pool = Pool.new(pool_params)
    @pool.user = current_user
    @review = Review.new
    if @pool.save
      redirect_to pool_path(@pool)
    else
      render 'pools/show'
    end
  end

  def show
    @pool = Pool.find(params[:id])
    @booking = Booking.new
    @review = Review.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def pool_params
    params.require(:pool).permit(:title, :address, :price, :capacity, :category, :description, :length, :depth, :width, :photo)
  end
end
