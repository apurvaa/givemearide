class Car < ActiveRecord::Base
	has_many :car_ownerships
	has_many :users, :through => :car_ownerships
	has_many :trips
end
