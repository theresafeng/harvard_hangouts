class WelcomeController < ApplicationController
  def index
    # paginate
    @hangouts = Hangout.order("start_date_time DESC").page(params[:page]).per(10)
  end
  
  def work
    # paginate
    @hangouts = Hangout.where("event = 'Work'").order("start_date_time DESC").page(params[:page]).per(10)
  end
  
  def sessions
    # paginate
    @hangouts = Hangout.where("event = 'Session'").order("start_date_time DESC").page(params[:page]).per(10)
  end
  
  def parties
    # paginate
    @hangouts = Hangout.where("event = 'Party'").order("start_date_time DESC").page(params[:page]).per(10)
  end
  
  def other
    # paginate
    @hangouts = Hangout.where("event = 'Other'").order("start_date_time DESC").page(params[:page]).per(10)
  end
  
  def about
  end
  
  def users
    @user = User.find(params[:id])
    @hangouts = Hangout.find(:all)
    
    # keep track of number of user's hangouts
    @count = 0
  	@hangouts.each do |hangout|
  	  if hangout.user.username == @user.username
  	    @count += 1
  	  end
  	end
  end
end