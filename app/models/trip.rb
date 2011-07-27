class Trip < ActiveRecord::Base
  belongs_to :origin, :class_name => "City"
  belongs_to :destination, :class_name => "City"
  belongs_to :user
  belongs_to :policy
  belongs_to :car
end
