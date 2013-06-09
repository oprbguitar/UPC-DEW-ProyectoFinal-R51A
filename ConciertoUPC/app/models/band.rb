class Band < ActiveRecord::Base
  has_many :styles
  belongs_to :concert
  has_many :band_users
  has_many :users, :through => :band_users
end
