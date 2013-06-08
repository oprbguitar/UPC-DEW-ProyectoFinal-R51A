class Comment < ActiveRecord::Base
  attr_accessible :content, :points
  belongs_to :concert
  belongs_to :user
end
