class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    user = current_user
    @booking.user = user
    @bicycle = Bicycle.find(params[:bicycle_id])
    @booking.bicycle_id = @bicycle.id
    price_per_day = @bicycle.price_per_day
    end_date = params[:booking][:end_date].to_date
    start_date = params[:booking][:start_date].to_date
    total_price = ((end_date - start_date) * price_per_day)
    @booking.total_price = total_price
    if @booking.save
      redirect_to dashboard_path
    else
      render "bicycles/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
