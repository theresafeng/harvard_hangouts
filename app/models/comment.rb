class Comment < ActiveRecord::Base
  belongs_to :hangout
  attr_accessible :content
end
