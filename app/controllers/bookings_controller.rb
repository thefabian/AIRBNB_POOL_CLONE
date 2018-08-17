class BookingsController < ApplicationController
  def index
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @pool = Pool.find(params[:pool_id])
    @booking.pool = @pool
    @review = current_user

    if @booking.save
      # redirect_to pool_path(@pool)
    else
      render "pools/show"
    end
  end

  def show
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guest)
  end
end
