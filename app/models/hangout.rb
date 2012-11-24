class Hangout < ActiveRecord::Base
  attr_accessible :description, :end_date_time, :event, :location, :name, :start_date_time
end
