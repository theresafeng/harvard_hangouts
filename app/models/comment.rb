class Comment < ActiveRecord::Base
  belongs_to :hangout
  belongs_to :user
  
  # make sure field is filled in, limit description to 100 characters
  validates :content, :presence => true, length: {maximum: 100}
  
  # Setup accessible (or protected) attributes for Comment model
  attr_accessible :content
end
