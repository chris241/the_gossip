class Gossip < ApplicationRecord
	belongs_to :user, optional: true
	has_many :tags, through: :tag_gossips
	has_many :tag_gossips

	has_many :comments
end
