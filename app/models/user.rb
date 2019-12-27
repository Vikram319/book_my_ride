# frozen_string_literal: true

class User < ApplicationRecord
  has_one :ride_request
  validates :first_name, :last_name, :contact_number, :password, :email_id, presence: true
  validates :contact_number, uniqueness: true
  validates :email_id, uniqueness: true, format: { with: /\A[a-zA-Z0-9]+[._]*[a-zA-Z0-9]*['@'][a-zA-Z]+[.][a-zA-Z]+/ }
  validates_associated :ride_request
  before_save do
    self.first_name = first_name.titleize
  end
end
