class User < ApplicationRecord

	has_one :ride_request
	validates :first_name, :last_name, :contact_number, :email, presence: true
	validates :contact_number, uniqueness: true
	validates :email_id , uniqueness: true, format: {with: /\A[a-zA-Z0-9]+[._]*[a-zA-Z0-9]*['@'][a-zA-Z]+[.][a-zA-Z]+/}
	validates_associated :ride_request
	before_save do
		self.first_name = self.first_name.titleize
	end

end
