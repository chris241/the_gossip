class User < ApplicationRecord
	belongs_to :city, optional: true
	has_many :comments
	has_many :gossips
	has_many :likes
end
