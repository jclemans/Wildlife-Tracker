class Sighting < ActiveRecord::Base
  validate :animal_id, :presence => true
end
