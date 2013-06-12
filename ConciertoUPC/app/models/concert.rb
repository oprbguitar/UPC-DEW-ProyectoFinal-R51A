class Concert < ActiveRecord::Base
  has_many :locals
  has_many :bands
  has_many :comments
end
