class ItinerariesController < ApplicationController
  def home
  end

  def show
	@places = Place.where("area = ?", params[:area])
  end

  def submit
  end

  def signup
    puts 'sign up clicked'
    p params
    email = params['email']
    comment = params['comment']

    signup = Signup.where('email = ?', email).first_or_initialize()
    if signup.new_record?
      signup.email = email
      signup.comment = comment
      signup.save
    end
    render json: signup.to_json()
  end
end
