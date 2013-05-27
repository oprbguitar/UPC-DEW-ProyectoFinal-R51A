class Local < ActiveRecord::Base
  has_many :districts
  belongs_to :concert
end
