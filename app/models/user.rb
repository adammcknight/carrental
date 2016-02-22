class User < ActiveRecord::Base
	has_secure_password
	has_many :reservations
	has_many :comments
	
	validates_uniqueness_of :email
	
	def self.setRegular(user)
		if !user.nil?
			if !user.regular?
				if !user.comments.count >= 3
						user.regular = true
						user.save
				end
			end
		end
	end
end
