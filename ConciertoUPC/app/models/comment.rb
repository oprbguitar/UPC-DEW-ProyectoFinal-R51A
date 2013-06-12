class Comment < ActiveRecord::Base
  attr_accessible :concert_id, :content, :ratio
  belongs_to :concert
end
