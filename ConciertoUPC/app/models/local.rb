class Local < ActiveRecord::Base
  has_many :districts
  belongs_to :concert
  geocoded_by :di_google_maps
  after_validation :geocode, :if => :di_google_maps_changed?
end
