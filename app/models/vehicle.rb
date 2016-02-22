class Vehicle < ActiveRecord::Base
	has_many :reservations
	
	has_many :comments, :dependent => :destroy
	
	def average_stars
		comments.average(:stars)
	end
	
	#def self.search(query)
	#	where("title LIKE?", "%#{query}%")
	#end
	
	#scope :general, -> { where(rating: G)}
	#def must_have_valid_trailer
	#	unless trailer.include?("<iframe")
	#		errors.add(:trailer, "Must include an iFrame tag")
	#	end
	#end
end
