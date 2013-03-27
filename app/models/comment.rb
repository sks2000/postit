class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :post

	scope :by_user, lambda { |user| where("user_id = ?", user) }

	validates :body, presence: true
end