# frozen_string_literal: true

class RidesController < ApplicationController
  def index
    @ride_count = Ride.all
  end
end
