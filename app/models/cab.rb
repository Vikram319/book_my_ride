# frozen_string_literal: true

class Cab < ApplicationRecord
	validates :seats, :number, presence: true
  has_many :rides
  validates_associated :rides
end
