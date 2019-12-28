class BicyclesController < ApplicationController
  def index
    @bicycles = Bicycle.geocoded

    @markers = @bicycles.map do |bicycle|
      {
        lat: bicycle.latitude,
        lng: bicycle.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bicycle: bicycle })
      }
    end
  end

  def show
    @bicycle = Bicycle.find(params[:id])
  end

  def new
    @bicycle = Bicycle.new
  end

  def create
    @bicycle = Bicycle.new(bicycle_params)
    @user = current_user
    @bicycle.user_id = @user
    if @bicycle.save
      redirect_to bicycle_path(@bicycle)
    else
      render 'new'
    end
  end

  private

  def bicycle_params
    params.require(:bicycle).permit(:model, :price_per_day, :start_date, :end_date, photos: [])
  end
end
