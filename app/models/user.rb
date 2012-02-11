class User < ActiveRecord::Base
	attr_accessible :uid, :credit
 	has_many :movies

	def self.create_with_omniauth(auth)
		create! do |user|
			user.provider = auth["provider"]
			user.uid = auth["uid"]
			user.name = auth["info"]["name"]
			user.credits = 10 	
		end
	end
end
