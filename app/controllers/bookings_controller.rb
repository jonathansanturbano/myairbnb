class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    user = current_user
    @booking.user_id = user
    bicycle = Bicycle.find(params[:bicycle_id])
    @booking.bicycle_id = bicycle
    raise
    if @booking.save
      redirect_to bicycles_path
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
