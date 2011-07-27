class City < ActiveRecord::Base
	  has_many :origin, :class_name => "Trip"
      has_many :destination, :class_name => "Trip"
end
