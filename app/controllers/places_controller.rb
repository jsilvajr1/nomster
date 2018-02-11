class PlacesController < ApplicationController
  def index
    @places = Place.all 
    @places = Place.paginate(:page => params[:page], :per_page => 5)
  end

  def new
    @place = Places.new
  end
  
  def create
  end

  private

  def place_params
  params.require(:place).permit(:name, :description, :address)
  end
end