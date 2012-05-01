class Sighting < ActiveRecord::Base
  belongs_to :sighting_type
  has_one :location
  attr_accessible :comment, :date, :description, :sighter, :sighting_type, :sighting_type_id, :location_attributes
  accepts_nested_attributes_for :location
end
