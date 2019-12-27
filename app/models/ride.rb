# frozen_string_literal: true

class Ride < ApplicationRecord
	validates :date, :time, :location, :cab_id, :driver_id, presence: true
  has_many :ride_requests
  belongs_to :driver
  belongs_to :cab
  validates_associated :ride_requests
end
