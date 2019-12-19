class BicyclesController < ApplicationController
  def index
    @bicyles = Bicycle.all
  end

  def new
    @bicycle = Bicycle.new
  end

  def create
    @bicycle = Bicycle.new(bicycle_params)
    if @bicycle.save
      redirect_to bicycle_path(@bicycle)
    else
      render 'new'
    end
  end
end
