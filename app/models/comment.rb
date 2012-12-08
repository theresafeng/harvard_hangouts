class Comment < ActiveRecord::Base
  belongs_to :hangout
  belongs_to :user
  
  # limit description to 100 characters
  validates :content, :presence => true, length: {maximum: 100}
  
  attr_accessible :content
end
