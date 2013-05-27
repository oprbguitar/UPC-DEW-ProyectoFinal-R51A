class Band < ActiveRecord::Base
  has_many :styles
  belongs_to :concert
end
