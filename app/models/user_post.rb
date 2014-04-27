class UserPost < ActiveRecord::Base
	scope :published, -> { where(published: true) }
	scope :published_and_commented, -> { published.where("comments_count > 0") }
end
