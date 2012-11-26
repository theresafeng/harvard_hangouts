class Hangout < ActiveRecord::Base
  attr_accessible :description, :end_date_time, :event, :location, :name, :start_date_time

  validates :description, :presence => true, length: {maximum: 100}  
  validates_presence_of :name, :event, :location, :start_date_time, :end_date_time
end
