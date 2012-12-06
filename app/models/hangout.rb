class Hangout < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :end_date_time, :event, :location, :start_date_time
  validates :description, :presence => true, length: {maximum: 100}  
  validates_presence_of :event, :location, :start_date_time, :end_date_time
  has_many :comments
end
