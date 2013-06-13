class District < ActiveRecord::Base
  belongs_to :local

  validates :nombre, :presence => { :message => ": Se requiere el nombre" }  
end
