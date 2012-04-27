class Sighting < ActiveRecord::Base
  has_one :sighting_type
  has_one :location
  attr_accessible :comment, :date, :description, :sighter
end
