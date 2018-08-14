class PoolsController < ApplicationController
  def index
  end

  def new
    @pool = Pool.new
  end

  def create
    @pool = Pool.new(pool_params)
    @pool.user = current_user
    if @pool.save
      redirect_to pool_path(@pool)
    else
      render 'pools/new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def pool_params
    params.require(:pool).permit(:title, :address, :price, :capacity, :category, :description, :length, :depth, :width)
  end
end
