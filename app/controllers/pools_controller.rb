class PoolsController < ApplicationController
  def index
    @pools = Pool.search(params[:term])
  end

  def new
  end

  def create
  end

  def show
    @pool = Pool.find(params[:id])
    @booking = Booking.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def pool_params
    params.require(:pool).permit(:title, :address, :price, :capacity, :category, :description, :length, :depth, :width, :term)
  end
end
