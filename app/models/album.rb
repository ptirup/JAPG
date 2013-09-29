class Album < ActiveRecord::Base

	belongs_to :user, counter_cache: true, dependent: :destroy
	has_many :photos

	validates :name, presence: true, length: {minimum: 2}
	validates :user_id, presence: true
	

end
