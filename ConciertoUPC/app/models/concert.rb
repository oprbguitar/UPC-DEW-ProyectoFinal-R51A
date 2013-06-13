class Concert < ActiveRecord::Base
  has_many :locals
  has_many :bands
  has_many :comments

  validates :name, :presence => { :message => ": Se requiere el nombre" }  
  validates :local_id, :presence => { :message => ": Se requiere el local" } 
  validates :band_id, :presence => { :message => ": Se requiere la banda" }
  validates :hora_fin, :presence => { :message => ": Se requiere la hora de finalizacion" }  
  validates :hora_ini, :presence => { :message => ": Se requiere la hora de inicio" }  
  validates :fecha, :presence => { :message => ": Se requiere la fecha" }  
end
