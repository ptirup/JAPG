class Comment < ActiveRecord::Base

	belongs_to :user, counter_cache: true, dependent: :destroy
	belongs_to :photo, counter_cache: true, dependent: :destroy
	
	validates :title, presence: true

end
