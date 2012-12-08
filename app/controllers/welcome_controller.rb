class WelcomeController < ApplicationController
  def index
    # paginate
    @hangouts = Hangout.order("start_date_time DESC").page(params[:page]).per(10)
  end
  def work
    @hangouts = Hangout.order("start_date_time DESC")
  end
  def sessions
    @hangouts = Hangout.order("start_date_time DESC")
  end
  def parties
    @hangouts = Hangout.order("start_date_time DESC")
  end
  def other
    @hangouts = Hangout.order("start_date_time DESC")
  end
  def about
  end
  def users
    @user = User.find(params[:id])
  end
end