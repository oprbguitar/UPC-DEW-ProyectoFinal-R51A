class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :username, :nombre, :appaterno, :apmaterno, :sexo, :tidocident, :nudocident, :email, :password, :password_confirmation
 
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :nombre
  validates_presence_of :appaterno
  validates_presence_of :apmaterno
  validates_presence_of :sexo
  validates_presence_of :tidocident
  validates_presence_of :nudocident
  validates_uniqueness_of :nudocident
  validates_presence_of :email
  validates_uniqueness_of :email
end
