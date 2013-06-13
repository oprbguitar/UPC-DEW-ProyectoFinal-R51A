class Local < ActiveRecord::Base
  has_many :districts
  belongs_to :concert
  geocoded_by :di_google_maps
  after_validation :geocode, :if => :di_google_maps_changed?

  validates :nombre, :presence => { :message => ": Se requiere el nombre del local" }  
  validates :direccion, :presence => { :message => ": Se requiere la direccion del local" }    
  validates :di_google_maps, :presence => { :message => ": Se requiere la direccion de google" }       
  validates :telefono, :presence => { :message => ": Se requiere el numero" }
  validates :district_id, :presence => { :message => ": Se requiere el distrito" }  
end
