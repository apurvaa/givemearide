class User < ActiveRecord::Base
	has_many :feedbacks
	has_many :trips
	has_many :car_ownerships
	has_many :cars, :through => :car_ownerships
end
