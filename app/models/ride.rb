class Ride < ApplicationRecord

	has_many :ride_requests
	belongs_to :driver
	belongs_to :cab
	validates_associated :ride_requests
	
end
