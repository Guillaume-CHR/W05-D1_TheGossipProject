class Gossip < ApplicationRecord
  belongs_to :user
	has_many :join_gossip_tags
	has_many :tags, through: :join_gossip_tags
	has_many :likes, as: :likeable
	has_many :comments, as: :commentable

	validates :title, presence: true
	validates :content, presence: true
end
