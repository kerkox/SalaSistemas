class WelcomeController < ApplicationController
  def index
  	@periods = Period.all
  	@actualperiod = Period.last
  	@reservations = Reservation.all
  	@rooms = Room.all
  	@users = User.all
  end
end