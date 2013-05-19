class ItinerariesController < ApplicationController
  def home
  end

  def show
	@places = Place.where("area = ?", params[:area])
  end

  def submit
  end
end
