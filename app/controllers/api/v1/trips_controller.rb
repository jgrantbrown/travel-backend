class Api::V1::TripsController < ApplicationController

def index
    if logged_in?
      @trips = current_user.trips
      render json: @trips
    else
      render json: {
        error: "You must be logged in to see trips"
      }
    end
end

end
