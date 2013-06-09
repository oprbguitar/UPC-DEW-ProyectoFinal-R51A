class User < ActiveRecord::Base
  has_many :band_users
  has_many :bands, :through => :band_users
end
