class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :username, :name, :appaterno, :apmaterno, :sexo, :tidocident, :nudocident, :email, :password, :password_confirmation

  validates :appaterno, :presence => { :message => ": Se requiere el Apellido Paterno" }  
  validates :apmaterno, :presence => { :message => ": Se requiere el Apellido Materno" }    
  validates :name, :presence => { :message => ": Se requiere el Nombre" }      
  validates :sexo, :presence => { :message => ": Se requiere su sexo" }   
  validates :nudocident, :presence => { :message => ": Ingrese el numero de su documento" }      
  validates :password, :presence => { :message => ": Ingrese contrasena" }      
  validates :nudocident, :uniqueness => true
  validates :email, :uniqueness => true
  validates :email, :presence => { :message => ": Ingrese su correo" }
  validates_format_of :email, :with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i
  validates :tidocident, :presence => { :message => ": Ingrese su tipo de documento" }      

  validates_presence_of :password, :password_confirmation, :if => :new_record?
  validates_confirmation_of :password, :if => lambda { |user| user.new_record? or not user.password.blank? }
  validates_length_of :password, :within => 8..20, :if => lambda { |user| user.new_record? or not user.password.blank? }
end
