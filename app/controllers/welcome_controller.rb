class WelcomeController < ApplicationController
  def index
    # paginate
    @hangouts = Hangout.order("start_date_time DESC").page(params[:page]).per(10)
  end
  def work
    @hangouts = Hangout.where("event = 'Work'").order("start_date_time DESC").page(params[:page]).per(10)
  end
  def sessions
    @hangouts = Hangout.where("event = 'Session'").order("start_date_time DESC").page(params[:page]).per(10)
  end
  def parties
    @hangouts = Hangout.where("event = 'Party'").order("start_date_time DESC").page(params[:page]).per(10)
  end
  def other
    @hangouts = Hangout.where("event = 'Other'").order("start_date_time DESC").page(params[:page]).per(10)
  end
  def about
  end
  def users
    @user = User.find(params[:id])
    @hangouts = Hangout.find(:all)
    @count = 0
  	@hangouts.each do |hangout|
  	  if hangout.user.username == @user.username
  	    @count += 1
  	  end
  	end
  end
end