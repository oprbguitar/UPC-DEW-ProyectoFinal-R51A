class Local < ActiveRecord::Base
  attr_accessible :di_google_maps, :direccion, :distrito, :nombre, :telefono, :latitude, :longitude
  geocoded_by :di_google_maps
  after_validation :geocode, :if => :di_google_maps_changed?
end