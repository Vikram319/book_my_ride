# frozen_string_literal: true

class Driver < ApplicationRecord
	validates :first_name, :last_name, :license, :mobile_number, presence: true
  has_many :rides
  validates_associated :rides
end
