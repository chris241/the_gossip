class User < ApplicationRecord
	has_secure_password
	belongs_to :city, optional: true
	has_many :comments
	has_many :gossips
	has_many :likes
end
