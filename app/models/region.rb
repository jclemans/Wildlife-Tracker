class Region < ActiveRecord::Base
  validates :name, :presence => true
  has_many :sightings
  has_many :animals, :through => :sightings
end
