# frozen_string_literal: true

class RideRequest < ApplicationRecord
	validates :status, presence: true, :status => true
	validates :user_id, :destination, :ride_id, :status, presence: true
  belongs_to :user
  belongs_to :ride
end
