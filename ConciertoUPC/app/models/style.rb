class Style < ActiveRecord::Base
  belongs_to :band

  validates :nombre, :presence => { :message => ": Se requiere el nombre" }  
end
