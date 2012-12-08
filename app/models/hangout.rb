class Hangout < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  # Setup accessible (or protected) attributes for Hangout model
  attr_accessible :description, :end_date_time, :event, :location, :start_date_time
  
  # limit description to 100 characters
  validates :description, :presence => true, length: {maximum: 100}  
  
  # make sure all fields are filled in
  validates_presence_of :event, :location, :start_date_time, :end_date_time
end
