class BicyclesController < ApplicationController
  before_action :set_coordinates, only: [:index]

  def index
    if !session[:latitude].nil?
      @bicycles = Bicycle.geocoded.near([session[:latitude].to_f, session[:longitude].to_f], 3)
    elsif params[:query].present?
      @bicycles = Bicycle.geocoded.near(params[:query], 6)
    else
      @bicycles = Bicycle.geocoded
    end
    @markers = create_map(@bicycles)
  end

  def show
    @bicycle = Bicycle.find(params[:id])
    @booking = Booking.new
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
      render 'bicycles/show'
    end
  end

  def edit
    @bicycle = Bicycle.find(params[:id])
  end

  def update
    @bicycle = Bicycle.find(params[:id])
    if @bicycle.update(bicycle_params)
      redirect_to bicycle_path(@bicycle)
    else
      render 'dashboard'
    end
  end

  private

  def bicycle_params
    params.require(:bicycle).permit(:model, :price_per_day, photos: [])
  end

  def set_coordinates
    session[:longitude] = params[:lng]
    session[:latitude] = params[:lat]
  end

  def create_map(bicycles)
    bicycles.map do |bicycle|
      {
        lat: bicycle.latitude,
        lng: bicycle.longitude,
        id: bicycle.id,
        infoWindow: render_to_string(partial: "info_window", locals: { bicycle: bicycle })
      }
    end
  end
end
