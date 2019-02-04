class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User"
  has_many :join_user_pms

  validates :title, presence: true
	validates :content, presence: true
end
