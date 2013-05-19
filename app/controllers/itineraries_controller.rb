class ItinerariesController < ApplicationController
  def home
  end

  def show
	@places = Place.find_by_area(params[:area])
  end

  def submit
  end
end
