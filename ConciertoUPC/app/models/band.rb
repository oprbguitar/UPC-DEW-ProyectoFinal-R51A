class Band < ActiveRecord::Base
  has_many :styles
  belongs_to :concert
  has_many :band_members
  has_many :members, :through => :band_members
end
