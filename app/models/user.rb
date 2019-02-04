class User < ApplicationRecord
  belongs_to :city
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "JoinUserPm"
  has_many :likes
  has_many :comments
  has_many :gossips
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :description, 
		presence: true,
		length: { minimum: 3 }
end
