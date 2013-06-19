class Style < ActiveRecord::Base
  belongs_to :band
  validates :name, :presence => { :message => ": Se requiere el nombre" } 
end
