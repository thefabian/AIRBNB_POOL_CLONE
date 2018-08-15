class PoolsController < ApplicationController
  def index
    @pools = Pool.search(params[:term])
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
      render 'pools/new'
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
    params.require(:pool).permit(:title, :address, :price, :capacity, :category, :description, :length, :depth, :width, :term)
  end
end
